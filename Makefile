all: snapshot report

snapshot:
	forge snapshot --force --match testERC20 --snap ./reports/snapshots/erc20.gas-snapshot
	forge snapshot --force --match testERC721 --snap ./reports/snapshots/erc721.gas-snapshot
	forge snapshot --force --match testERC1155 --snap ./reports/snapshots/erc1155.gas-snapshot

report:
	forge test --match testERC20 --gas-report | sed 's/^$$/-/' |  grep -Eo '(^\|.*)|(-)' | sed 's/-/ /' > reports/ERC20.md
	forge test --match testERC721 --gas-report | sed 's/^$$/-/' |  grep -Eo '(^\|.*)|(-)' | sed 's/-/ /' > reports/ERC721.md
	forge test --match testERC1155 --gas-report | sed 's/^$$/-/' |  grep -Eo '(^\|.*)|(-)' | sed 's/-/ /' > reports/ERC1155.md
