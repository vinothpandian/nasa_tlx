import 'package:flutter/material.dart';
import 'package:nasa_tlx/widgets/icon_link.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Nasa TLX"),
        actions: [
          IconLink(
            url: "https://github.com/vinothpandian/nasa_tlx",
            icon: Image.asset("assets/icons/github.png"),
          )
        ],
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nasa TLX",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),
                const Text(
                    "The NASA Task Load Index (NASA-TLX) is a subjective, multidimensional workload assessment tool. It was developed by the Human Performance Group at NASA Ames Research Center. It is thought to be one of the most validated workload measurement tools in Human Factors Psychology and Engineering."),
                const SizedBox(height: 16),
                const Text(
                    "The NASA-TLX rates perceived workload on six different scales: Mental Demand, Physical Demand, Temporal Demand, Performance, Effort, and Frustration. According to Hart and Staveland (1988), a participant should first rate the six scales according to how much they contributed to the workload required for the task being studied. After the ratings, each of the six scales is weighted. The weightings are achieved by answering 15 pair-wise comparisons and are designed to greatly enhance the sensitivity of the overall workload score while reducing between-rater variability."),
                const SizedBox(height: 16),
                Text(
                  "Credit: Sharek, D. (2009). NASA-TLX Online Tool (Version 0.06) [Internet Application]. Research Triangle, NC.",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Divider(height: 32),
                Text(
                  "About this version",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),
                const Text(
                    """This open-source web version of NASA-TLX is built using Flutter, Firebase database, and Firebase authentication."""),
                const SizedBox(height: 16),
                const Text("This version will be supported and updated based on user feedback."),
                const SizedBox(height: 16),
                const Text(
                    "Contributions are welcome. You can find the source code in the GitHub link provide on the navbar."),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
