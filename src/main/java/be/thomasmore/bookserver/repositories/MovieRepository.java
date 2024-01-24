package be.thomasmore.bookserver.repositories;

import be.thomasmore.bookserver.model.Movie;
import org.springframework.data.repository.CrudRepository;
import org.springframework.lang.NonNull;

import java.util.List;

public interface MovieRepository extends CrudRepository<Movie, Integer> {
    List<Movie> findAll();

}
