package be.thomasmore.bookserver.model.converters;

import be.thomasmore.bookserver.model.Movie;
import be.thomasmore.bookserver.model.dto.MovieDetailedDTO;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class MovieDetailedDTOConverter {

    @Autowired
    private ModelMapper modelMapper;

    /**
     * @param Movie the entity from the db
     * @return MovieDetailedDTO object to send to the client.
     */
    public MovieDetailedDTO convertToDto(Movie movie) {
        return modelMapper.map(movie, MovieDetailedDTO.class);
    }

}
