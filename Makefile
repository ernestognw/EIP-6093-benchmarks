report:
	forge test --match testERC20 --gas-report | sed 's/^$$/-/' |  grep -Eo '(^\|.*)|(-)' | sed 's/-/ /' > reports/ERC20.md
	forge test --match testERC721 --gas-report | sed 's/^$$/-/' |  grep -Eo '(^\|.*)|(-)' | sed 's/-/ /' > reports/ERC721.md
	forge test --match testERC1155 --gas-report | sed 's/^$$/-/' |  grep -Eo '(^\|.*)|(-)' | sed 's/-/ /' > reports/ERC1155.md
