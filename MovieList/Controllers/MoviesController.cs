using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MovieList.Models;

namespace MovieList.Controllers
{
    public class MoviesController : Controller
    {
        private MovieDBContext db = new MovieDBContext();

        // get movie - default page
        public ActionResult Index()
        {
            var movies = from e in db.Movie
                         orderby e.Id
                         select e;
            return View(movies.ToList());
        }
        [Route("Movie")]
        public ActionResult Index(string data)
        {
            var movies = from e in db.Movie
                         orderby e.Id
                         select e;
            return View(movies.ToList());
        }

        [Route("Movie/AddMovieForm")]
        public ActionResult AddMovieForm()
        {
            return View();
        }

        [HttpPost]
        [Route("submitData/formsubmit")]
        public ActionResult submitData(FormCollection form)
        {
            Movie movie = new Movie();
            movie.Name = form["Name"];
            movie.ReleaseDate = form["ReleaseDate"];
            movie.Thumbnail = form["Thumbnail"];

            db.Movie.Add(movie);
            db.SaveChanges();
            return RedirectToAction("AddMovieForm");
        }

        // GET: Movie/Create
        public ActionResult Create()
        {
            return View();
        }
        
        // POST: Movie/Create
        [HttpPost]
        public ActionResult Create(Movie movie)
        {
            try
            {
                db.Movie.Add(movie);
                db.SaveChanges();
                return RedirectToAction("Index");
            } catch
            {
                return View();
            }
        }
    }
}