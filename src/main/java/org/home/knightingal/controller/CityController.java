package org.home.knightingal.controller;

import org.home.knightingal.bean.City;
import org.home.knightingal.dao.CityDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value="/city")
public class CityController {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Autowired
    CityDao cityDao;

    @RequestMapping(value="/simpleQueryCities")
    @ResponseBody
    public List<City> simpleQueryCities() {
        final List<City> cities = new ArrayList<City>();
        jdbcTemplate.query("select id, name, countryCode, district, population from city limit 0, 10", new RowCallbackHandler() {
            public void processRow(ResultSet resultSet) throws SQLException {
                System.out.println(resultSet.getString(2));

                City city = new City();
                city.setId(resultSet.getInt(1));
                city.setName(resultSet.getString(2));
                city.setCountryCode(resultSet.getString(3));
                city.setDistrict(resultSet.getString(4));
                city.setPopulation(resultSet.getInt(5));

                cities.add(city);
            }
        });
        return cities;
    }

    @RequestMapping(value="/queryCities")
    public String queryCities(
    		@RequestParam(value="countryCode", required=false) String countryCode,
    		Model model
	) {
        City param = new City();
        param.setCountryCode(countryCode);

        List<City> cities = cityDao.queryCities(param);
        model.addAttribute("cities", cities);
        return "queryCities";  
    }
}
