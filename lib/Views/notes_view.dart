import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'editNote.dart';

class NotesView extends StatelessWidget{

  // final String hint="";
   //final int maxlines =1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            context: context, builder: (context)
        {
          return Padding(
             padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                const  SizedBox(height: 32,),
                  TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Title',
                     helperStyle:const TextStyle(
                       color: Color(0xffffcc80),
                     ),
                     border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      )
                     ) ,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          )
                      ) ,

                    ),
                  ),
                 const  SizedBox(height: 16,),
                  TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Content',
                      helperStyle:const TextStyle(
                        color: Color(0xffffcc80),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          )
                      ) ,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          )
                      ) ,
                    ),
                  ),
                  const SizedBox(height: 32,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      color:const Color(0xffffcc80),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: const Center(
                      child: Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                 const SizedBox(height: 16,)
                ],
              ),
            ),
          );
        });
      },
      child: const Icon(
        Icons.add,
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Row(
              children: [
                const Text(
                    'Notes',
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: Colors.white,
                 ),
                ),
                const Spacer(),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white.withOpacity(0.05),
                  ),
                  child:const Icon(
                    Icons.search,
                    size: 28,
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                    itemBuilder: (context,index){
                 return GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)
                     {
                       return EditNoteView();
                     }));
                   },
                   child: Container(
                    padding: const EdgeInsets.only(top:24,bottom: 24,left: 16),
                    decoration: BoxDecoration(
                        color: const Color(0xffffcc80),
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ListTile(
                          title: const Text('Flutter Tips',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 16,bottom: 16),
                            child: Text('build your career with us',
                              style: TextStyle(
                                color: Colors.black.withOpacity(.5),
                                fontSize:18,
                              ),
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: (){},
                            icon:const Icon(
                              Icons.delete,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Text('May21, 2022',
                            style: TextStyle(
                              color: Colors.black.withOpacity(.4),
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                   ),
                 );
                }
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}