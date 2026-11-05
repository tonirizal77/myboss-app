part of 'product_detail_cubit.dart';

class ProductDetailState extends Equatable {
  const ProductDetailState({
    required this.product,
    this.status = Status.initial,
    this.errorMessage = '',
  });

  final Product product;
  final Status status;
  final String errorMessage;

  ProductDetailState copyWith({
    Product? product,
    Status? status,
    String? errorMessage,
  }) => ProductDetailState(
    product: product ?? this.product,
    status: status ?? this.status,
    errorMessage: errorMessage ?? this.errorMessage,
  );

  @override
  List<Object?> get props => [product, status, errorMessage];
}
