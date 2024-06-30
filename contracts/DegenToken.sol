// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    constructor(address initialOwner) ERC20("Degen", "DGN") Ownable(initialOwner) {}

    struct Item {
        string name;
        uint price;
    }
    Item[] public shop;

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // transferring tokens
    function transferTokens(address to, uint amount) external {
        uint currentTokens = balanceOf(msg.sender);
        if (currentTokens < amount) {
            revert("Insufficient funds to transfer");
        }
        // approve(msg.sender, amount);
        // transferFrom(msg.sender, to, amount);
        transfer(to, amount);
    }

    // Add items to shop for redeeming
    function populateShop() external {
        shop.push(Item("Degen NFT Token", 100));
        shop.push(Item("Degen Logo Sticker", 50));
        shop.push(Item("Degen Jersey", 200));
        shop.push(Item("Degen Custom Avatar", 40));
    }

    // redeeming tokens
    function redeemTokens(uint item) external {
        uint maxItems = shop.length;
        if (item > maxItems) {
            revert("Item does not exist in the shop");
        }
        Item memory selectedItem = shop[item];
        uint itemPrice = selectedItem.price;

        uint currentTokens = balanceOf(msg.sender);
        if (currentTokens < itemPrice) {
            revert("Insufficient amount of tokens to redeem item");
        }
        // burn(itemPrice);
        _update(msg.sender, address(0), itemPrice);
    }

    // checking token balance
    function getBalance() external view returns(uint256) {
        return this.balanceOf(msg.sender);
    }

    // burning tokens
    function burnTokens(uint amount) external {
        uint currentTokens = balanceOf(msg.sender);
        if (currentTokens < amount) {
            revert("Insufficient tokens to burn");
        }
        burn(amount);
    }
}
