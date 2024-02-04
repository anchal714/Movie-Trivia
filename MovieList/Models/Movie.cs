using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace MovieList.Models
{
    public class Movie
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public string ReleaseDate { get; set; }

        public string Thumbnail { get; set; }
    }

    public class MovieDBContext : DbContext
    {
        public MovieDBContext() { }

        public DbSet<Movie> Movie { get; set; }

    }
}