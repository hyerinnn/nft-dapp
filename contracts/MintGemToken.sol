// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

//erc721에서 util적인 기능이 추가된 타입
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol"; 

contract MintGemToken is ERC721Enumerable {


    // 컨트랙트가 배포될때 최초로 실행됨
    //erc721은 constructor를 실행할 때 기본적으로 플젝이름과 약자를 입력함
    //constructor() ERC721("name", "symbol") {}
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {}

    function mintGemToken() public  {
        // 총 발행량을 리턴
        uint tokenId = totalSupply() + 1;

        // nft의 발행자(함수를 실행하는 사람), 토큰id를 인자로 받는 mint함수
        _mint(msg.sender, tokenId);
    }
}
