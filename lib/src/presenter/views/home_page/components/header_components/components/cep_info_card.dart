import 'package:flutter/material.dart';
import 'package:konsi_challange/src/domain/entities/local_entity.dart';
import 'package:konsi_challange/src/presenter/views/home_page/components/header_components/components/last_search_info.dart';

class CEPInfoCard extends StatelessWidget {
  final LocalEntity? local;
  const CEPInfoCard({super.key, this.local});

  @override
  Widget build(BuildContext context) {
    return (local != null)
        ? Container(
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
                          'CEP: ${local!.cep}',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'UF: ${local!.initials}',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Localidade: ${local!.city}',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Bairro: ${local!.neighborhood}',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Logradouro: ${local!.adress}',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Complemento: ${local!.complement}',
                    style: TextStyle(
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
          )
        : Container(
            child: Center(
              child: Text('NULO'),
            ),
          );
  }
}
