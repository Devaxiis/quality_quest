import 'package:intl/intl.dart';
import 'package:quality_quest/library.dart';
import 'edit_profile_screen_views/show_success_edit_dialog.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  DateTime? selectedDeadline;



  Future<void> pickDeadline() async {
    final DateTime initialDate = selectedDeadline ?? DateTime(2004, 01, 01);

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1960, 01, 01),
      lastDate: DateTime(2022),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
    );

    if (picked != null && picked != selectedDeadline) {
      setState(() {
        selectedDeadline = picked;
        dateOfBirthController.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: CustomColors.oxFFFFFFFF,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: CustomColors.oxFFFFFFFF,
        forceMaterialTransparency: true,
        centerTitle: true,
        title: Text(
          Strings.personalInfoTXT,
          style: Style.personalInfoST,
        ),
        actions: [
          TextButton(
            onPressed: () async {
              showSuccessEditDialog(context);
            },
            child: const Icon(Icons.save, color: CustomColors.oxFF6949FF),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 35),
              Stack(
                alignment: const Alignment(0.92, 0.8),
                children: [
                  CircleAvatar(
                    radius: 90.sp,
                    backgroundImage: const AssetImage(
                      "assets/images/img_profile_circle.png",
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 32.sp,
                      width: 32.sp,
                      decoration: const BoxDecoration(
                        color: CustomColors.oxFF6949FF,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: const Icon(
                        Icons.edit,
                        color: CustomColors.oxFFFFFFFF,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // #Divider
              const Divider(
                color: CustomColors.oxFF9E9E9E,
                thickness: 0.5,
              ),

              const SizedBox(height: 20),

              CustomTextFormField(
                text: Strings.fullNameTXT,
                keyboardType: TextInputType.name,
                textInput: TextInputAction.next,
                control: fullNameController,
              ),
              const SizedBox(height: 20),

              CustomTextFormField(
                text: Strings.emailTXT,
                keyboardType: TextInputType.emailAddress,
                textInput: TextInputAction.next,
                control: emailController,
              ),
              const SizedBox(height: 20),

              CustomTextFormField(
                text: Strings.countryTXT,
                keyboardType: TextInputType.text,
                textInput: TextInputAction.next,
                control: countryController,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
