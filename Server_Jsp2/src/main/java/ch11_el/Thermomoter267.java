package ch11_el;

import java.util.HashMap;
import java.util.Map;

//Instance Method()사용하기
public class Thermomoter267 {
	private Map<String, Double> locationCelsiusMP = new HashMap<>();

	public Double getCelsius(String location) {
		return locationCelsiusMP.get(location);
	}

	public void setCelsius(String location, Double value) {
		this.locationCelsiusMP.put(location, value);
	}

	public Double getFahrenheit(String location) {
		Double celsius = getCelsius(location);
		if (celsius == null) {
			return null;
		}
		return celsius.doubleValue() * 1.8 + 32.0;

	}
	//getInfo()를 EL에서 사용 시 : info
	public String getInfo() {
		return "온도계 변환기 1.1";
	}
}
