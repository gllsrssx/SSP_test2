package be.thomasmore.bookserver.controllers;

import be.thomasmore.bookserver.model.dto.MovieDTO;
import be.thomasmore.bookserver.model.dto.MovieDetailedDTO;
import be.thomasmore.bookserver.services.MovieService;
import io.swagger.v3.oas.annotations.Operation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/movies")
@Slf4j
public class MovieController {

    @Autowired
    private MovieService movieService;

    @Operation(summary = "find all the Movies that are stored in the database ",
            description = "All Movies are returned. </br>")
    @GetMapping("")
    public Iterable<MovieDTO> findAll() {
        log.info("##### findAll Movies");
        return movieService.findAll();
    }


    @Operation(summary = "get 1 Movie from the database.",
            description = "Movie with id is fetched from database. ")
    @GetMapping("{id}")
    public MovieDetailedDTO findOne(@PathVariable int id) {
        log.info(String.format("##### findOne Movie %d", id));
        return movieService.findOne(id);
    }

}
