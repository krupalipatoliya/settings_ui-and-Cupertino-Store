class Global {
  static bool isIOS = false;
}

class Product {
  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  final int id;
  final String name;
  final String image;
  final int price;
}

List itemlist = [
  const Product(
    image:
          "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ3tBYGXTD-8ZDW1keXawYGb_G4iFYPB1Q-p6MTLauPRSog4Bkm_8ikav9Ujr-fX_E0rmGoUD1xJ19df_UPyGOKK3pnmCdC_HbcKFBmyGs&usqp=CAE",
    id: 0,
    name: 'Vagabond sack',
    price: 120,
  ),
  const Product(
    image:
        "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ3tBYGXTD-8ZDW1keXawYGb_G4iFYPB1Q-p6MTLauPRSog4Bkm_8ikav9Ujr-fX_E0rmGoUD1xJ19df_UPyGOKK3pnmCdC_HbcKFBmyGs&usqp=CAE",
    id: 1,
    name: 'Stella Sunglasses',
    price: 58,
  ),
  const Product(
    image:
        "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcR0srT16RR3zsDo3LEsWfaaQeDFHR3C8GuGsciTvb1AvIT3Phv9_oXI_rf-opDXNyqTqV1K2sMJRFfT8Iq9yBWUBBB4OqOYJI3ZoGkTTOP0f20Nuhim9emIeSU&usqp=CAE",
    id: 2,
    name: 'Whitney belt',
    price: 42,
  ),
  const Product(
    image:
        "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcT7Ug81IhjlxL7G_uf3L3hfw-v6d3Ae7stbBUrKTJVtFb2ltGbsZcQFGV7Aj0uqb6LdM2VDjiXgvt2iqjH4iXMs0vmrpv_sMNQ9YGf68C_IJfhxyUxvv0Bbpg&usqp=CAE",
    id: 3,
    name: 'Garden stand',
    price: 98,
  ),
  const Product(
    image:
        "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTG1JJSQ7uDBH-XblKnshsNDCgiYL1o8wRp3cEz5VyAmaKbLoSHlg_ijr-5jsRm1xuIdeaVKoFeusqp49_ZryYMOzg6RIsqLbcwDYTkKiU&usqp=CAE",
    id: 4,
    name: 'Strut earrings',
    price: 98,
  ),
  const Product(
    image:
        "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQU3a8MfmIpiZzcdIKoBRRIOO8tmj6COgCWs-5_qXB-QzAJORNs9Bm38ryIpIKdhiMe8O3oxux1wLt_OPEHJK_jiEBOGaWEjWpmfY-ChA63YgBNW-zGiShfNQ&usqp=CAE",
    id: 5,
    name: 'Varsity socks',
    price: 34,
  ),
  const Product(
    image:
        "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSD40hq9vD3cRmFEtNfKw5ogr6kUdgPIV1xDE8v6QYabyoauxQLU-7pDxCT2SbT0qFYcn5XiZgkVa54CdCZLqFh85gFnOdnE-sTUwLg2IXH&usqp=CAE",
    id: 6,
    name: 'weave Keyring',
    price: 34,
  ),
  const Product(
    image:
        "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ3tBYGXTD-8ZDW1keXawYGb_G4iFYPB1Q-p6MTLauPRSog4Bkm_8ikav9Ujr-fX_E0rmGoUD1xJ19df_UPyGOKK3pnmCdC_HbcKFBmyGs&usqp=CAE",
    id: 7,
    name: 'Stella Sunglasses',
    price: 58,
  ),
  const Product(
    image:
        "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcR0srT16RR3zsDo3LEsWfaaQeDFHR3C8GuGsciTvb1AvIT3Phv9_oXI_rf-opDXNyqTqV1K2sMJRFfT8Iq9yBWUBBB4OqOYJI3ZoGkTTOP0f20Nuhim9emIeSU&usqp=CAE",
    id: 8,
    name: 'Whitney belt',
    price: 42,
  ),
  const Product(
    image:
        "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcT7Ug81IhjlxL7G_uf3L3hfw-v6d3Ae7stbBUrKTJVtFb2ltGbsZcQFGV7Aj0uqb6LdM2VDjiXgvt2iqjH4iXMs0vmrpv_sMNQ9YGf68C_IJfhxyUxvv0Bbpg&usqp=CAE",
    id: 9,
    name: 'Garden stand',
    price: 98,
  ),
  const Product(
    image:
        "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTG1JJSQ7uDBH-XblKnshsNDCgiYL1o8wRp3cEz5VyAmaKbLoSHlg_ijr-5jsRm1xuIdeaVKoFeusqp49_ZryYMOzg6RIsqLbcwDYTkKiU&usqp=CAE",
    id: 10,
    name: 'Strut earrings',
    price: 98,
  ),
  const Product(
    image:
        "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQU3a8MfmIpiZzcdIKoBRRIOO8tmj6COgCWs-5_qXB-QzAJORNs9Bm38ryIpIKdhiMe8O3oxux1wLt_OPEHJK_jiEBOGaWEjWpmfY-ChA63YgBNW-zGiShfNQ&usqp=CAE",
    id: 11,
    name: 'Varsity socks',
    price: 34,
  ),
  const Product(
    image:
        "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSD40hq9vD3cRmFEtNfKw5ogr6kUdgPIV1xDE8v6QYabyoauxQLU-7pDxCT2SbT0qFYcn5XiZgkVa54CdCZLqFh85gFnOdnE-sTUwLg2IXH&usqp=CAE",
    id: 12,
    name: 'weave Keyring',
    price: 34,
  ),
  const Product(
    image:
    "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQU3a8MfmIpiZzcdIKoBRRIOO8tmj6COgCWs-5_qXB-QzAJORNs9Bm38ryIpIKdhiMe8O3oxux1wLt_OPEHJK_jiEBOGaWEjWpmfY-ChA63YgBNW-zGiShfNQ&usqp=CAE",
    id: 13,
    name: 'Varsity socks',
    price: 34,
  ),
  const Product(
    image:
    "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSD40hq9vD3cRmFEtNfKw5ogr6kUdgPIV1xDE8v6QYabyoauxQLU-7pDxCT2SbT0qFYcn5XiZgkVa54CdCZLqFh85gFnOdnE-sTUwLg2IXH&usqp=CAE",
    id: 14,
    name: 'weave Keyring',
    price: 34,
  ),
];
