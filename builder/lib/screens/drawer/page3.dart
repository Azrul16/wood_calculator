import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _currentUser;

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      setState(() {
        _currentUser = account;
      });
    });
    _googleSignIn.signInSilently();
  }

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print('Error signing in: $error');
    }
  }

  Future<void> _handleSignOut() async {
    await _googleSignIn.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Sign-In'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: _currentUser != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(_currentUser!.photoUrl ?? ''),
                    radius: 40,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Hello, ${_currentUser!.displayName}',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Email: ${_currentUser!.email}',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _handleSignOut,
                    child: Text('Sign Out'),
                  ),
                ],
              )
            : ElevatedButton.icon(
                onPressed: _handleSignIn,
                icon: Icon(Icons.login),
                label: Text('Sign in with Google'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.amber, // Text color
                ),
              ),
      ),
    );
  }
}
