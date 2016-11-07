namespace Model
{
    public class Wine
    {
        public Wine(int id, string wineName, string wineDescription)
        {
            Id = id;
            WineName = wineName;
            WineDescription = wineDescription;
        }

        public int Id { get; set; }
        public string WineName { get; set; }
        public string WineDescription { get; set; }
    }
}
