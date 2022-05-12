
import Foundation


public class ViewModel:ObservableObject{
        
    @Published var games:[Game] = []
    
//    var categories: [String: [Game]] {
//            Dictionary(
//                grouping: games,
//                by: { $0.storeID.rawValue }
//            )
//        }
    
    
    let headers = [
        "X-RapidAPI-Host": "cheapshark-game-deals.p.rapidapi.com",
        "X-RapidAPI-Key": "f1eaea58efmsha9c05707b972f53p130052jsn896be00e1b51"
    ]

    
    
    func fetch(){
        
        let request = NSMutableURLRequest(url: NSURL(string: "https://cheapshark-game-deals.p.rapidapi.com/deals?lowerPrice=0&steamRating=0&desc=0&output=json&steamworks=0&sortBy=Deal%20Rating&AAA=0&pageSize=60&exact=0&upperPrice=50&pageNumber=1&onSale=0&metacritic=0&storeID%5B0%5D=1%2C2")! as URL,cachePolicy: .useProtocolCachePolicy,
        timeoutInterval: 10.0)
        
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        
        
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest){
        [weak self] data, _ , error in
            guard let data = data, error == nil else{
                return
        }
            do{
                let games = try JSONDecoder().decode([Game].self, from: data)
                DispatchQueue.main.async { [self] in
                    self?.games = games
                }
            }
            catch{
                print(error)
            }
        }
        
        
        
        
        dataTask.resume()
        
    }

}
