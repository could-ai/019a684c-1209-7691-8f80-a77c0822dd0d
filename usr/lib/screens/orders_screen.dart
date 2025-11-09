import 'package:flutter/material.dart';
import '../widgets/order_card.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Orders'),
        bottom: TabBar(
          controller: _tabController,
          labelColor: const Color(0xFF1DBF73),
          unselectedLabelColor: Colors.grey,
          indicatorColor: const Color(0xFF1DBF73),
          tabs: const [
            Tab(text: 'Active'),
            Tab(text: 'Completed'),
            Tab(text: 'Cancelled'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildOrderList('active'),
          _buildOrderList('completed'),
          _buildOrderList('cancelled'),
        ],
      ),
    );
  }

  Widget _buildOrderList(String status) {
    if (status == 'active') {
      return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 3,
        itemBuilder: (context, index) {
          return const OrderCard(
            orderId: '#ORD12345',
            title: 'Professional Logo Design',
            sellerName: 'Priya Sharma',
            price: '₹1,500',
            status: 'In Progress',
            dueDate: '2 days',
            statusColor: Color(0xFFFF9800),
          );
        },
      );
    } else if (status == 'completed') {
      return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const OrderCard(
            orderId: '#ORD12340',
            title: 'Social Media Marketing Campaign',
            sellerName: 'Amit Patel',
            price: '₹5,000',
            status: 'Completed',
            dueDate: 'Delivered',
            statusColor: Color(0xFF1DBF73),
          );
        },
      );
    } else {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cancel_outlined,
              size: 80,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(
              'No cancelled orders',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    }
  }
}