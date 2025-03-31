// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GameItems is ERC1155, Ownable {
    uint256 public constant WIZARD_HAT = 0;
    uint256 public constant KNIGHT_ARMOR = 1;
    uint256 public constant FIRE_SWORD = 2;
    uint256 public constant WOODEN_SHIELD = 3;
    uint256 public constant LEATHER_BOOTS = 4;
    uint256 public constant MAGIC_AMULET = 5;

    constructor()
        ERC1155("https://yourapi.com/api/item/{id}.json")
        Ownable(msg.sender)
    {
        _mint(msg.sender, WIZARD_HAT, 1000, "");
        _mint(msg.sender, KNIGHT_ARMOR, 1000, "");
        _mint(msg.sender, FIRE_SWORD, 1000, "");
        _mint(msg.sender, WOODEN_SHIELD, 1000, "");
        _mint(msg.sender, LEATHER_BOOTS, 1000, "");
        _mint(msg.sender, MAGIC_AMULET, 1000, "");
    }
    
    function mintWizardHat() public {
        _mint(msg.sender, WIZARD_HAT, 1, "");
    }

    function mintKnightArmor() public {
        _mint(msg.sender, KNIGHT_ARMOR, 1, "");
    }
    function mintFireSword() public {
        _mint(msg.sender, FIRE_SWORD, 1, "");
    }
    function mintWoodenShield() public {
        _mint(msg.sender, WOODEN_SHIELD, 1, "");
    }
    function mintLeatherBoots() public {
        _mint(msg.sender, LEATHER_BOOTS, 1, "");
    }

    function mintMagicAmulet() public {
        _mint(msg.sender, MAGIC_AMULET, 1, "");
    }

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }
}
