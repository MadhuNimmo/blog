import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import Home from "./screens/Home";
import Comments from "./screens/Comments";
import Login from "./screens/Login";
import { useState, useEffect } from 'react';
import * as FileSystem from 'expo-file-system';
import { AppState } from 'react-native';

const Stack = createNativeStackNavigator();

export default function App() {
	var [appState, setAppState] = useState(AppState.currentState);

	useEffect(() => {
	AppState.addEventListener('change', handleAppStateChange);

	return () => {
	AppState.removeEventListener('change', handleAppStateChange);
	};
	}, []);

	var handleAppStateChange = (nextAppState) => {
		if (nextAppState !== 'active') {
		const analysisData = J$.analysis.endExecution();
		FileSystem.writeAsStringAsync(FileSystem.documentDirectory + 'DCG.json', JSON.stringify(analysisData)).then(()=>{
		alert('DCG written to '+ FileSystem.documentDirectory + 'DCG.json')
		}).catch((e)=>{
		alert(e)
		}); 
		}
	}
	return (
		<NavigationContainer>
			<Stack.Navigator>
				<Stack.Screen
					name='Login'
					component={Login}
					options={{ headerShown: false }}
				/>
				<Stack.Screen
					name='Home'
					component={Home}
					options={{ headerShown: false }}
				/>
				<Stack.Screen name='Comments' component={Comments} />
			</Stack.Navigator>
		</NavigationContainer>
	);
}
