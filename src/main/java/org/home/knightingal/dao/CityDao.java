package org.home.knightingal.dao;

import org.home.knightingal.bean.City;

import java.util.List;

public interface CityDao {
    List<City> queryCities(City param);
}
