package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class EndingSubState extends MusicBeatState
{
	public static var Ending:Int = 0; // 1 = good 2 = bad 3 = secret

	override function create()
	{
		switch (Ending)
		{
			case 0:
				var EndingAsset = new FlxSprite(-40, 50).loadGraphic(Paths.image('aflac/goodEnding', 'shared'));
				EndingAsset.screenCenter(XY);
				add(EndingAsset);
			case 1:
				var EndingAsset = new FlxSprite(-40, 50).loadGraphic(Paths.image('aflac/badEnding', 'shared'));
				EndingAsset.screenCenter(XY);
				add(EndingAsset);
			case 2:
				var EndingAsset = new FlxSprite(-40, 50).loadGraphic(Paths.image('aflac/secretEnding', 'shared'));
				EndingAsset.screenCenter(XY);
				add(EndingAsset);
		}
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT || controls.BACK)
		{
			FlxG.switchState(new MainMenuState());
		}
		super.update(elapsed);
	}
}
