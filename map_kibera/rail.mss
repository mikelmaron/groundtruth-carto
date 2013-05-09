@rail_color: #a00;

#rail {
  line-color: @rail_color;
  [zoom > 16]{
  line-width: 2;
    ::dasharray {
      line-width: 6;
      line-color: @rail_color;
      line-dasharray:1,15;
    }
  }
  [zoom <= 16]{
  line-width: 1.5;
    ::dasharray {
      line-width: 5;
      line-color: @rail_color;
      line-dasharray:1,12;
    }
  }
  [zoom <= 14]{
  line-width: 0.6;
    ::dasharray {
      line-width: 3;
      line-color: @rail_color;
      line-dasharray:1,10;
    }
  }
}