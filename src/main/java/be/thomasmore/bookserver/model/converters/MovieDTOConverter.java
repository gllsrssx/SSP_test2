package be.thomasmore.bookserver.model.converters;

import be.thomasmore.bookserver.model.Movie;
import be.thomasmore.bookserver.model.dto.MovieDTO;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MovieDTOConverter {

    @Autowired
    private ModelMapper modelMapper;

    /**
     * @param Movie the entity from the db
     * @return MovieDTO object to send to the client.
     */
    public MovieDTO convertToDto(Movie movie) {
        return modelMapper.map(movie, MovieDTO.class);
    }
}
