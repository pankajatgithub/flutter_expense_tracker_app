import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget{

const NewExpense({super.key});

@override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
  }

class _NewExpenseState extends State<NewExpense>{

@override
Widget build(BuildContext context){
  // var _enteredTitle = "";

  // void _saveTitleInput(String inputValue){
  //   _enteredTitle = inputValue;
  // }

  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }


  return  Padding(
    padding:  const EdgeInsets.all(16),
    child: Column(
      children: [
         TextField(
          controller: _titleController,
          // onChanged: _saveTitleInput,
          maxLength: 50,
          decoration:const InputDecoration(
            label: Text("Title")
          ),
        ),

        TextField(
          controller: _amountController,
          maxLength: 50,
          keyboardType:TextInputType.number ,
          decoration: const InputDecoration(
            prefixText: '\$ ',
            label: Text("Amount")
          ),


        ),
        Row(
          children: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, 
            child: const Text("Cancel")),
            ElevatedButton(
              onPressed: (){
                print(_titleController.text);
                print(_amountController.text);

              },
              child: const Text("Saved Expense"))
          ],

        )
      ],),
    );
}

}



