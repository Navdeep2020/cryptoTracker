//
//  CoinModel.swift
//  CryptoTracker
//
//  Created by Navdeep Singh on 16/06/24.
//

import Foundation


/*
 URL :
 https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
 
 JSON Response :
 {
   "id": "bitcoin",
   "symbol": "btc",
   "name": "Bitcoin",
   "image": "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
   "current_price": 66541,
   "market_cap": 1310919933606,
   "market_cap_rank": 1,
   "fully_diluted_valuation": 1396495162150,
   "total_volume": 11931974804,
   "high_24h": 66727,
   "low_24h": 65931,
   "price_change_24h": 328.11,
   "price_change_percentage_24h": 0.49554,
   "market_cap_change_24h": 5662514400,
   "market_cap_change_percentage_24h": 0.43382,
   "circulating_supply": 19713150,
   "total_supply": 21000000,
   "max_supply": 21000000,
   "ath": 73738,
   "ath_change_percentage": -9.7602,
   "ath_date": "2024-03-14T07:10:36.635Z",
   "atl": 67.81,
   "atl_change_percentage": 98029.9965,
   "atl_date": "2013-07-06T00:00:00.000Z",
   "roi": null,
   "last_updated": "2024-06-16T18:00:14.735Z",
   "sparkline_in_7d": {
     "price": [
       69658.46681164297,
       69737.12919334027,
       69649.06870027601,
       69681.23501022052,
       69705.3147840307,
       69616.31203554032,
       69600.84597186842,
       69556.82634403778,
       69601.3025268636,
       69699.90448151037,
       69593.50742064392,
       69668.47016488576,
       69532.87864605538,
       69400.28705440945,
       69371.00641265,
       69384.4040382232,
       69425.34660664776,
       69432.85832587274,
       69407.0113316572,
       69284.76519309687,
       69330.06966003006,
       69642.34736119978,
       70026.23809524855,
       69968.38351995572,
       69934.87931158906,
       69829.51073238786,
       69475.94363136594,
       69640.9896417372,
       69561.62253408604,
       69423.4148910535,
       69520.05675455675,
       69395.59653070327,
       68827.08484158927,
       68213.80907831456,
       68330.4618363228,
       68013.57309307026,
       67920.32667797514,
       67650.89683227673,
       67524.03717788108,
       67484.76797541087,
       67086.01859024228,
       66844.25684843837,
       66814.40984036,
       66810.50640112838,
       66846.88705655902,
       66758.62077298097,
       66254.14061582841,
       66474.94542818003,
       66830.13875787533,
       67230.3700391561,
       67431.20073597411,
       67227.8746725209,
       67397.0999298549,
       67466.83152899473,
       67336.41055827447,
       67171.5388816894,
       67160.23533723527,
       67414.173786596,
       67434.90403570062,
       67396.24856877846,
       67278.74840126628,
       67272.5695891375,
       67440.38268459926,
       67358.17998505192,
       67636.13241496615,
       67993.04494689683,
       67715.6077126721,
       69340.41314522336,
       69297.52737419421,
       69945.14621307769,
       69790.07963852314,
       69626.23070267307,
       69823.7294495425,
       68832.9155346005,
       67535.69694984893,
       68179.72245168686,
       68541.90232619926,
       68290.58767446288,
       68250.38321594121,
       68321.9049609974,
       68024.77996346737,
       67661.7799275531,
       67631.34568285926,
       67367.55758142112,
       67595.67645197612,
       67507.75592997254,
       67722.72066980373,
       67562.60288421059,
       67431.86283458596,
       67864.29441928043,
       67729.55200152895,
       67710.97221465738,
       67543.88882337407,
       67333.81104507415,
       66425.6047353365,
       66985.67711590248,
       66886.42249196274,
       66844.12657265879,
       66651.3617762797,
       66630.04825892035,
       66873.45199792623,
       66848.78421920289,
       66745.98686951792,
       66662.74002008876,
       66782.30779992275,
       67006.57330260718,
       66700.5306961597,
       66684.63235290528,
       66922.16798236241,
       66923.66991370483,
       66863.50842718265,
       67099.98917105338,
       66894.72241684659,
       66833.1347113555,
       66990.71589862717,
       66983.48425673672,
       67037.89616479912,
       66955.1693238413,
       66354.40210679971,
       65018.88966978141,
       65358.62401527746,
       65471.062897972784,
       65527.18893074999,
       65801.87609767841,
       66233.13377497892,
       65912.45701192942,
       66011.07873713733,
       66177.04569619242,
       66045.8697586441,
       66248.11658968484,
       66231.52395426984,
       66214.84488739497,
       66271.83399729767,
       66119.06588462261,
       66093.09859197574,
       66217.80376399249,
       66165.42911983845,
       66258.95884524715,
       66277.18944387183,
       66305.0236988419,
       66232.4891512111,
       66195.08680881886,
       66248.82033209119,
       66181.19131346764,
       66124.3475495551,
       66103.64557601546,
       66129.30466904303,
       66028.26750375066,
       66075.71828484812,
       66192.47116037388,
       66187.58290904516,
       66117.20794045372,
       66127.37932922452,
       66095.67186302284,
       66100.36462892218,
       66120.77435385223,
       66197.86825766882,
       66272.78681635823,
       66203.44217926438,
       66227.82115105916,
       66341.69824461444,
       66670.20376562687,
       66463.59323952431,
       66555.80070676221,
       66699.21625334202,
       66525.95610184227,
       66623.86689133052,
       66545.31872142173
     ]
   },
   "price_change_percentage_24h_in_currency": 0.4955425775546537
 }
 */

// MARK: - CoinModel
struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    
    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
}

struct SparklineIn7D: Codable {
    let price: [Double]?
}

