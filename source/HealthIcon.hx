package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();

		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1, 2], 0, false, isPlayer);
		animation.add('bf-car', [0, 1, 2], 0, false, isPlayer); // he turned into a convertible
		animation.add('bf-christmas', [0, 1, 2], 0, false, isPlayer);
		animation.add('bf-pixel', [17], 0, false, isPlayer);
		animation.add('spooky', [8, 9, 8], 0, false, isPlayer);
		animation.add('pico', [10, 11, 10], 0, false, isPlayer);
		animation.add('mom', [12, 13, 12], 0, false, isPlayer);
		animation.add('mom-car', [12, 13, 12], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('dad', [3, 4, 3], 0, false, isPlayer);
		animation.add('senpai', [18, 18, 19], 0, false, isPlayer); // I personally hate icon 23
		animation.add('senpai-angry', [20, 21, 20], 0, false, isPlayer);
		animation.add('spirit', [22, 23, 24], 0, false, isPlayer); // winning icon is from weeg mod dont sue me
		animation.add('bf-old', [25, 26, 27], 0, false, isPlayer);
		animation.add('gf', [5, 7, 6], 0, false, isPlayer); // cute icons pog
		animation.add('parents-christmas', [14], 0, false, isPlayer);
		animation.add('monster', [15, 16], 0, false, isPlayer);
		animation.add('monster-christmas', [15, 16], 0, false, isPlayer);
		animation.add('aflac', [32, 33, 34], 0, false, isPlayer);
		animation.add('aflacangy', [35, 36, 37], 0, false, isPlayer);
		animation.add('aflacpissed', [38, 39, 40], 0, false, isPlayer);
		animation.add('unknown', [41], 0, false, isPlayer);
		animation.play(char);
		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
