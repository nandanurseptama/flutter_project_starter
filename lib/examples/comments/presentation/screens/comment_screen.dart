import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_starter/examples/comments/data/models/comment.dart';
import 'package:flutter_project_starter/examples/comments/presentation/states/bloc/comments_bloc.dart';

class CommentsScreen extends StatefulWidget {
  final CommentsBloc commentsBloc;

  const CommentsScreen({super.key, required this.commentsBloc});

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comments"),
        centerTitle: true,
      ),
      body: BlocProvider<CommentsBloc>(
        create: (context) =>
            widget.commentsBloc..add(CommentsEvent.loadSingleComment(1)),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (_, constraints) {
              return BlocBuilder<CommentsBloc, CommentsState>(
                builder: (_, commentsState) {
                  return Container(
                    constraints: constraints,
                    child: Center(
                      child: commentsState.maybeMap(
                        loading: (value) {
                          return _loading();
                        },
                        error: (value) {
                          return _error(value.failure.mappedFront);
                        },
                        loaded: (value) {
                          if (value.comments.isEmpty) {
                            return _error("No Comments");
                          }
                          return _loaded(value.comments);
                        },
                        orElse: () {
                          return _loading();
                        },
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _loading() {
    return const SizedBox(
      height: 50,
      width: 50,
      child: CircularProgressIndicator(),
    );
  }

  Widget _error(String error) {
    return Text(error);
  }

  Widget _loaded(List<Comment> comments) {
    return Column(
      children: comments.map((e) {
        return Text(e.body);
      }).toList(),
    );
  }
}
