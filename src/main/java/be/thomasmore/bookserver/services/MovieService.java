package be.thomasmore.bookserver.services;

import be.thomasmore.bookserver.model.Movie;
import be.thomasmore.bookserver.model.converters.MovieDTOConverter;
import be.thomasmore.bookserver.model.converters.MovieDetailedDTOConverter;
import be.thomasmore.bookserver.model.dto.MovieDTO;
import be.thomasmore.bookserver.model.dto.MovieDetailedDTO;
import be.thomasmore.bookserver.repositories.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class MovieService {
    @Autowired
    private MovieRepository MovieRepository;

    @Autowired
    private MovieDTOConverter MovieDTOConverter;
    @Autowired
    private MovieDetailedDTOConverter MovieDetailedDTOConverter;

    public List<MovieDTO> findAll() {
        final List<Movie> Movies = MovieRepository.findAll();
        return Movies.stream()
                .map(a -> MovieDTOConverter.convertToDto(a))
                .collect(Collectors.toList());
    }

    public MovieDetailedDTO findOne(int id) {
        final Optional<Movie> Movie = MovieRepository.findById(id);
        if (Movie.isEmpty())
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR,
                    String.format("Movie with id %d does not exist.", id));
        return MovieDetailedDTOConverter.convertToDto(Movie.get());
    }
}
