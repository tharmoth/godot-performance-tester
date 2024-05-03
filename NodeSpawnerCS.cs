using Godot;
using System;

public partial class NodeSpawnerCS : Node
{
	public override void _Ready()
	{
		var button = GetNode<OptionButton>("%OptionButton");
        button.ItemSelected += index =>
		{
			if (button.GetItemText((int)index) == "C#")
			{
				Spawn();
			}
			else
			{
				Clear();
			}
		};
	}

	private void Clear()
	{
		foreach (var node in GetChildren())
		{
			node.QueueFree();
		}
	}
	
	private void Spawn()
	{
		for (int i = 0; i < 100000; i++)
		{
			AddChild(new EmptyScript());
		}
	}
}
