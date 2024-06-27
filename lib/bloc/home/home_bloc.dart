import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:omillionare/models/Cart.dart';
import 'package:omillionare/models/Product.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<ShopNowState>(_shopNow);
    on<PlayNowState>(_playNow);
    on<SingleProductState>(_showSingleProduct);
    on<SetProduct>(_handleSetProductEvent);
    on<IncrementQuantity>(_incrementQuantity);
    on<DecrementQuantity>(_decrementQuantity);
    on<SetProductToCart>(_handleSetCartEvent);
  }

  // void _fnc(ShopNowState event, Emitter<HomeState> emit) {
  //   emit(state.copyWith(homePageActiveIndex: 0));
  // }
  void _shopNow(ShopNowState event, Emitter<HomeState> emit) {
    emit(state.copyWith(homePageActiveIndex: 0));
  }

  void _playNow(PlayNowState event, Emitter<HomeState> emit) {
    emit(state.copyWith(homePageActiveIndex: 1));
  }

  void _showSingleProduct(SingleProductState event, Emitter<HomeState> emit) {
    emit(state.copyWith(homePageActiveIndex: 2));
  }

  // void _setProduct(SetProduct event, Emitter<HomeState> emit) {
  //   Cart cart = Cart();

  //   emit(state.copyWith(homePageActiveIndex: 2));
  // }

  void _handleSetProductEvent(SetProduct event, Emitter<HomeState> emit) {
    
    Product? filteredProduct = state.products.firstWhere(
      (product) => product.title == event.productId,
    );

    if (filteredProduct != null) {

      Product selectedProduct = filteredProduct;

      emit(state.copyWith(selectedProduct: selectedProduct));
    }
  }

  void _handleSetCartEvent(SetProductToCart event, Emitter<HomeState> emit) {
    
    final Product? selectedProduct = state.selectedProduct;
    
    if (selectedProduct != null) {

      Cart cart = Cart(
        product: selectedProduct,
        quantity: 1
      );

      emit(state.copyWith(cart: cart));
    }
  }

  void _incrementQuantity(IncrementQuantity event, Emitter<HomeState> emit) {
    print(state.cart);
    if (state.cart != null) {
      Cart cart = Cart( product: state.cart!.product, quantity: state.cart!.quantity + 1 );
      emit(state.copyWith(cart: cart));
    }
  }

  void _decrementQuantity(DecrementQuantity event, Emitter<HomeState> emit) {
    print(state.cart);
    if (state.cart != null && state.cart!.quantity > 1) {
      Cart cart = Cart( product: state.cart!.product, quantity: state.cart!.quantity - 1 );
      emit(state.copyWith(cart: cart));
    }
  }


}
