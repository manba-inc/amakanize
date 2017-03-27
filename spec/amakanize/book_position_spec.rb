RSpec.describe Amakanize::BookPosition do
  let(:book_position) do
    described_class.new(raw)
  end

  describe "#to_s" do
    subject do
      book_position.to_s
    end

    {
      "12BEAST (4) (ドラゴンコミックスエイジ お 6-1-4)" => "4",
      "20世紀少年 完全版 6 (ビッグコミックススペシャル)" => "6",
      "Fate/Grand Order 電撃コミックアンソロジー (2) (電撃コミックスNEXT)" => "2",
      "GANTZ 13 (集英社文庫 お 62-28)" => "13",
      "MUJIN -無尽-  3巻 (ヤングキングコミックス)" => "3",
      "QあんどA 1 (ゲッサン少年サンデーコミックス)" => "1",
      "Re:ゼロから始める異世界生活 公式アンソロジーコミック (MFコミックス アライブシリーズ)" => "",
      "THE BEST STAGE ガールフレンド(♪) ~Side MOMOKO~ (電撃コミックスEX)" => "",
      "アラタカンガタリ~革神語~ リマスター版 7 (少年サンデーコミックススペシャル)" => "7",
      "おいピータン!!(16) (ワイドKC Kiss)" => "16",
      "おにもて(3)<完> (講談社コミックス)" => "3",
      "お迎えです。 6 (花とゆめCOMICS)" => "6",
      "ガールフレンド(♪) ~nonet notes~ (1) (電撃コミックスEX)" => "1",
      "キングダム ハーツII(9) (ガンガンコミックス)" => "9",
      "こいつら100%伝説 下 (集英社文庫 お 34-6)" => "下",
      "こいつら100%伝説 上 (集英社文庫 お 34-5)" => "上",
      "スーパーロボット大戦OG -ジ・インスペクター- Record of ATX Vol.1 BAD BEAT BUNKER (電撃コミックスNEXT)" => "1",
      "ネトゲの嫁は女の子じゃないと思った? Lv.4 (電撃コミックスNEXT)" => "4",
      "やはり俺の青春ラブコメはまちがっている。@comic 7 (サンデーGXコミックス)" => "7",
      "リュウマのガゴウ  9巻 (ヤングキングコミックス)" => "9",
      "一騎当千  龍虎ノ巻 (ヤングキングコミックス)" => "",
      "怪滅王と12人の星の巫女 (3) (電撃コミックスNEXT)" => "3",
      "車田水滸伝 HERO OF HEROES 01 (チャンピオンREDコミックス)" => "1",
      "不機嫌なモノノケ庵 6.5 奉公人指南書(アルバイトマニュアル) (ガンガンコミックスONLINE)" => "",
    }.each do |book_name, expected_book_position|
      context "with #{book_name.inspect}" do
        let(:raw) do
          book_name
        end

        it { is_expected.to eq expected_book_position }
      end
    end
  end
end
