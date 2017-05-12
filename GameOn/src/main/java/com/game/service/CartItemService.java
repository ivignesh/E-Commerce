package com.game.service;

import com.game.model.Cart;
import com.game.model.CartItem;

public interface CartItemService {
	
void addCartItem(CartItem cartItem);
CartItem getCartItem(int cartItemId);
void removeCartItem(CartItem cartItem);
void removeAllCartItems(Cart cart);

}