pragma solidity ^0.6.0;

import "./IExerciceSolution.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IPool} from "@aave/core-v3/contracts/interfaces/IPool.sol";


contract ExerciceSolution is IExerciceSolution
{
    ERC20 public DAI;

    constructor() public{
        DAI=ERC20(0xBa8DCeD3512925e52FE67b1b5329187589072A55);
    }

	function depositSomeTokens() external override{
        uint256 amount = 10**18;

        DAI.approve(0x7b5C526B7F8dfdff278b4a3e045083FBA4028790, amount);
        IPool(0x7b5C526B7F8dfdff278b4a3e045083FBA4028790).supply(0xBa8DCeD3512925e52FE67b1b5329187589072A55, amount, address(this), 0);
    }

	function withdrawSomeTokens() external override{

    }

	function borrowSomeTokens() external override{

    }

	function repaySomeTokens() external override{

    }

	function doAFlashLoan() external override{

    }

	function repayFlashLoan() external override{

    }
}

