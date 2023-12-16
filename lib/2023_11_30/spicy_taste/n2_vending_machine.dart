class Product {
  final String name;
  final int price;
  int stock;

  Product({
    required this.name,
    required this.price,
    this.stock = 5,
  });
}

class VendingMachine {
  final List<Product> products;

  const VendingMachine({required this.products});

  void showInfo() {
    print('===== 자판기 상태 =====');

    for (final Product product in products) {
      print(
          '${product.name} - 가격: ${product.price}원, 수량: ${product.stock}개');
    }

    print('=====================');
  }

  void buyProduct({required final Product product, required final int money}) {
    // price 오름차순 정렬
    products.sort((final Product prev, final Product next) =>
        prev.price.compareTo(next.price));

    for (int i = 0; i < products.length; i++) {
      if ((products[i].stock > 0) && (products[i].price <= money)) {
        if ((product.stock > 0) && (product.price <= money)) {
          product.stock--;
          print(
              '[${product.name} 구매 성공] 가격: ${product.price}원, 거스름돈: ${money - product.price}원, 남은 수량: ${product.stock}개');
        } else {
          print('구매 실패');
        }

        break;
      }
    }
  }
}

void main() {
  final Product chocolate = Product(name: '초콜릿', price: 500);
  final Product pepero = Product(name: '빼빼로', price: 600);
  final Product fanta = Product(name: '환타', price: 1000);
  final Product cider = Product(name: '사이다', price: 1100);

  final VendingMachine vendingMachine =
      VendingMachine(products: [chocolate, pepero, fanta, cider]);

  vendingMachine.showInfo();
  vendingMachine.buyProduct(product: pepero, money: 5000);
  vendingMachine.showInfo();
}
