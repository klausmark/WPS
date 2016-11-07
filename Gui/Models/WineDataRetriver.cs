using System.Collections.Generic;
using System.Linq;
using Model;

namespace Gui.Models
{
    public static class WineDataRetriver
    {
        private static readonly IList<Wine> List;
        private static int _nextWineId;

        static WineDataRetriver()
        {
            List = new List<Wine>();
            AddWine("Pinot Blanc 2001", "Pinot blanc is a white wine grape. It is a point genetic mutation of Pinot noir. Pinot noir is genetically unstable and will occasionally experience a point mutation in which a vine bears all black fruit except for one cane which produced white fruit");
            AddWine("Riesling 1997 Grand Cru Eichberg Kuentz-Bas", "Riesling is dry, rich and strong, with nuances of mineral or flowers");
            AddWine("Chateau de Serame Minervois 2005", "Smooth round body, tannic, acidic. Red fruit. Food wine. Simple but flavorful");
            AddWine("Beauroy Chablis 1er Cru", "A great Chardonnay, to enjoy as an aperitif or to go with seafood or white meat. Refreshing, dry and complex");
            AddWine("\"KB\" de Kuentz-Bas", "Pinot Blanc is a round, delicate and fruity wine, well-balanced but  supple. It can be drunk with various starters and is suited  to grilled fish and roast poultry.");
        }
        public static IEnumerable<Wine> GetAllWines()
        {
            return List;
        }

        public static void AddWine(string WineName, string WineDescription)
        {
            List.Add(
                new Wine(_nextWineId++, WineName, WineDescription));
        }

        public static void UpdateWine(int id, string wineName, string wineDescription)
        {
            var wine = GetWine(id);
            wine.WineName = wineName;
            wine.WineDescription = wineDescription;
        }

        public static void DeleteWine(int id)
        {
            List.Remove(GetWine(id));
        }

        public static Wine GetWine(int id)
        {
            return List.First(w => w.Id == id);
        }

    }
}