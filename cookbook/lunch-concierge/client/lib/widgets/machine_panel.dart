import 'package:flutter/material.dart';

import '../theme.dart';

final class MachinePanel extends StatelessWidget {
  const MachinePanel({
    super.key,
    required this.areaController,
    required this.moodController,
    required this.budgetController,
    required this.loading,
    required this.onAsk,
    required this.error,
  });

  final TextEditingController areaController;
  final TextEditingController moodController;
  final TextEditingController budgetController;
  final bool loading;
  final VoidCallback onAsk;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        color: LunchPalette.machine,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text(
                'TICKET MACHINE',
                style: monoTextStyle(
                  size: 11,
                  weight: FontWeight.w700,
                  color: Colors.white54,
                  letterSpacing: 2.5,
                ),
              ),
              const Spacer(),
              Text(
                'NO.001',
                style: monoTextStyle(size: 11, color: Colors.white38),
              ),
            ],
          ),
          const SizedBox(height: 22),
          MachineField(
            controller: areaController,
            label: 'どのあたり？',
            hint: '渋谷',
          ),
          const SizedBox(height: 14),
          MachineField(
            controller: moodController,
            label: 'どんな気分？',
            hint: 'あっさり、辛い、温かい',
          ),
          const SizedBox(height: 14),
          MachineField(
            controller: budgetController,
            label: '予算',
            hint: '1200',
            suffix: '円',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 24),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: LunchPalette.accent,
              foregroundColor: Colors.white,
              disabledBackgroundColor: const Color(0x26FFFFFF),
              disabledForegroundColor: Colors.white54,
              minimumSize: const Size.fromHeight(56),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              textStyle: displayTextStyle(size: 17, weight: FontWeight.w700),
            ),
            onPressed: loading ? null : onAsk,
            child: Text(loading ? '発券中…' : '食券を発行する'),
          ),
          if (error != null) ...[
            const SizedBox(height: 18),
            Container(
              padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
              decoration: const BoxDecoration(
                color: Color(0x33000000),
                border: Border(
                  left: BorderSide(color: LunchPalette.accent, width: 3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '発券できませんでした。',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    error!,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    style: monoTextStyle(
                        size: 11, color: Colors.white70, height: 1.5),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

final class MachineField extends StatelessWidget {
  const MachineField({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
    this.suffix,
    this.keyboardType,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final String? suffix;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: Colors.white,
      style: const TextStyle(color: Colors.white, fontSize: 15),
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        suffixText: suffix,
        suffixStyle: monoTextStyle(size: 13, color: Colors.white54),
        labelStyle: const TextStyle(color: Colors.white70, fontSize: 14),
        floatingLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
        hintStyle: const TextStyle(color: Colors.white38),
        filled: true,
        fillColor: const Color(0x17FFFFFF),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: Colors.white24),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: Colors.white, width: 2),
        ),
      ),
    );
  }
}
