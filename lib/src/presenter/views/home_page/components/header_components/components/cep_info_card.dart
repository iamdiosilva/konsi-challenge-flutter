import 'package:flutter/material.dart';
import 'package:konsi_challange/src/domain/entities/local_entity.dart';
import 'package:konsi_challange/src/presenter/views/home_page/components/header_components/components/last_search_info.dart';

class CEPInfoCard extends StatefulWidget {
  final LocalEntity? local;
  const CEPInfoCard({super.key, this.local});

  @override
  State<CEPInfoCard> createState() => _CEPInfoCardState();
}

class _CEPInfoCardState extends State<CEPInfoCard> {
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      crossFadeState: widget.local == null
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 500),
      firstChild: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        width: 320,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      'CEP: ${widget.local?.cep}',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'UF: ${widget.local?.initials}',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                'Localidade: ${widget.local?.city}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Bairro: ${widget.local?.neighborhood}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Logradouro: ${widget.local?.adress}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Complemento: ${widget.local?.complement}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: LastSearchInfo(),
              )
            ],
          ),
        ),
      ),
      secondChild: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        width: 320,
        child: const Center(
          child: LastSearchInfo(),
        ),
      ),
    );
  }
}
