import 'package:flutter/material.dart';

import 'Dbhelper.dart';
import 'product.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final _db = DatabaseHelper.instance;
  List<Product> _products = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  // READ
  Future<void> _loadProducts() async {
    final data = await _db.getProducts();
    if (!mounted) return;
    setState(() {
      _products = data;
      _loading = false;
    });
  }

  // DELETE
  Future<void> _deleteProduct(Product product) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Delete product'),
        content: Text('Delete "${product.name}"? This cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
    if (confirm != true) return;

    await _db.deleteProduct(product.id!);
    await _loadProducts();
    _showMessage('Product deleted');
  }

  // CREATE + UPDATE (pass a product to edit, or null to add)
  Future<void> _showProductForm({Product? product}) async {
    final nameCtrl = TextEditingController(text: product?.name ?? '');
    final priceCtrl =
        TextEditingController(text: product?.price.toString() ?? '');
    final qtyCtrl =
        TextEditingController(text: product?.quantity.toString() ?? '');
    final formKey = GlobalKey<FormState>();
    final isEdit = product != null;

    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => Padding(
        padding: EdgeInsets.fromLTRB(
          20,
          20,
          20,
          MediaQuery.of(ctx).viewInsets.bottom + 20,
        ),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isEdit ? 'Edit product' : 'Add product',
                style: Theme.of(ctx)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: nameCtrl,
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(
                  labelText: 'Product name',
                  prefixIcon: Icon(Icons.inventory_2_outlined),
                ),
                validator: (v) =>
                    v == null || v.trim().isEmpty ? 'Enter a name' : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: priceCtrl,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  labelText: 'Price',
                  prefixIcon: Icon(Icons.attach_money),
                ),
                validator: (v) {
                  final value = double.tryParse(v ?? '');
                  if (value == null || value < 0) return 'Enter a valid price';
                  return null;
                },
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: qtyCtrl,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Quantity',
                  prefixIcon: Icon(Icons.numbers),
                ),
                validator: (v) {
                  final value = int.tryParse(v ?? '');
                  if (value == null || value < 0) {
                    return 'Enter a valid quantity';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.teal,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  icon: Icon(isEdit ? Icons.save : Icons.add),
                  label: Text(isEdit ? 'Save changes' : 'Add product'),
                  onPressed: () async {
                    if (!formKey.currentState!.validate()) return;

                    final item = Product(
                      id: product?.id,
                      name: nameCtrl.text.trim(),
                      price: double.parse(priceCtrl.text),
                      quantity: int.parse(qtyCtrl.text),
                    );

                    if (isEdit) {
                      await _db.updateProduct(item);
                    } else {
                      await _db.insertProduct(item);
                    }

                    if (ctx.mounted) Navigator.pop(ctx);
                    await _loadProducts();
                    _showMessage(isEdit ? 'Product updated' : 'Product added');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showMessage(String text) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Text(text),
        behavior: SnackBarBehavior.floating,
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Products')),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _products.isEmpty
              ? _buildEmptyState()
              : ListView.builder(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 90),
                  itemCount: _products.length,
                  itemBuilder: (context, index) =>
                      _buildProductCard(_products[index]),
                ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showProductForm(),
        icon: const Icon(Icons.add),
        label: const Text('Add product'),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.inventory_2_outlined,
              size: 80, color: Colors.teal.shade200),
          const SizedBox(height: 12),
          const Text(
            'No products yet',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 4),
          Text(
            'Tap "Add product" to create your first one.',
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(Product p) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: Colors.teal.shade50,
          child: Text(
            p.name[0].toUpperCase(),
            style: const TextStyle(
                color: Colors.teal, fontWeight: FontWeight.bold),
          ),
        ),
        title: Text(
          p.name,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
              '\$${p.price.toStringAsFixed(2)}  •  Qty: ${p.quantity}'),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              tooltip: 'Edit',
              icon: const Icon(Icons.edit_outlined, color: Colors.teal),
              onPressed: () => _showProductForm(product: p),
            ),
            IconButton(
              tooltip: 'Delete',
              icon: const Icon(Icons.delete_outline, color: Colors.red),
              onPressed: () => _deleteProduct(p),
            ),
          ],
        ),
      ),
    );
  }
}
