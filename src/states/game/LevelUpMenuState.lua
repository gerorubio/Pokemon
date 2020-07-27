LevelUpMenuState = Class{__includes = BaseState}

function LevelUpMenuState:init(battleState, text)
	self.battleState = battleState

	self.levelUpMenu = Menu {
	x = VIRTUAL_WIDTH - 144,
	y = VIRTUAL_HEIGHT - 128,
	width = 144,
	height = 128,
	items = {
		{
			text = text[1],
			onSelect = function()
				gStateStack:pop()
				gStateStack:push(BattleMessageState('Congratulations! Level Up!',
                function()
                    TakeTurnState:fadeOutWhite()
                end))
			end
		},
		{
			text = text[2],
			onSelect = function()
				gStateStack:pop()
				gStateStack:push(BattleMessageState('Congratulations! Level Up!',
                function()
                    TakeTurnState:fadeOutWhite()
                end))
			end
		},
		{
			text = text[3],
			onSelect = function()
				gStateStack:pop()
				gStateStack:push(BattleMessageState('Congratulations! Level Up!',
                function()
                    TakeTurnState:fadeOutWhite()
                end))
			end
		},
		{
			text = text[4],
			onSelect = function()
				gStateStack:pop()
				gStateStack:push(BattleMessageState('Congratulations! Level Up!',
                function()
                    TakeTurnState:fadeOutWhite()
                end))
			end
		}
	},
	selectorOn = false
	}
end

function LevelUpMenuState:update(dt)
	self.levelUpMenu:update(dt)
end

function LevelUpMenuState:render()
	self.levelUpMenu:render()
end