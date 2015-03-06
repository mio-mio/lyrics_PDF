class LyricPDF < Prawn::Document

  def initialize(lyric)
    super()

    @lyric = lyric
#日本語の時だけfont書く
#    font "vendor/fonts/ipaexm.ttf"
#    text "Hi, Prawn!! on lyric_pdf.rb"
    
    # ヘッダー部分の表示
    header
    # ヘッダーリード部分の表示
    song_writers
    # テーブル部分の表示
    table_content
    # footer
    footer
  end

  def header
       text "#{@lyric.title}", :align => :center, size: 28
  end
  
  def song_writers
         # カーソルを指定
    y_position = cursor - 30

    # bounding_boxで記載箇所を指定して、textメソッドでテキストを記載
    bounding_box([400, y_position], :width => 270, :height => 50) do
      font_size 10.5
      text "Lyric : #{@lyric.lyricist}"
      move_down 3
      text "Music:  #{@lyric.composer}"
      move_down 3
      text "Singer:  #{@lyric.singer}"
    end
  end
  
  def table_content
      text "#{@lyric.content}"
  end
  
  def footer
      text "#{@lyric.title}"
  end
end
