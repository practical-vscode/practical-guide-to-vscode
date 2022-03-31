// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
import * as vscode from 'vscode';

export function activate(context: vscode.ExtensionContext) {

	const getCmd = vscode.commands.registerCommand('command-practice.getCommand', () => {
		
		vscode.commands.getCommands().then((data) => {
			
			console.log('commands', data);
		
		});

	});

	const txtCmd = vscode.commands.registerTextEditorCommand('command-practice.textEditorCommand', () => {
		
		vscode.window.showInformationMessage('Show Message Only when there is an active editor!');
	
	});

	const registerCmd = vscode.commands.registerCommand('command-practice.helloWorld', () => {

		vscode.window.showInformationMessage('Hello World from command-practice!');

	});

	const registerExecCmd = vscode.commands.registerCommand('command-practice.executeCommand', async () => {
		
		await vscode.commands.executeCommand('workbench.action.toggleSidebarVisibility');
			
		vscode.window.showInformationMessage('Panel has been toggle!');

	});

	context.subscriptions.push(getCmd, txtCmd, registerCmd, registerExecCmd);
}

export function deactivate() {}
