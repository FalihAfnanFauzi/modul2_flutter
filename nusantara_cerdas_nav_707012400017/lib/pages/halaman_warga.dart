import 'package:flutter/material.dart';
import '../navigation/app_routes.dart';

class HalamanWarga extends StatelessWidget {
  const HalamanWarga({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Kartu Identitas Digital Warga
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: theme.colorScheme.primary.withValues(alpha: 0.3),
            ),
          ),
          color: theme.colorScheme.primaryContainer.withValues(alpha: 0.25),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 46,
                  backgroundColor: theme.colorScheme.primary,
                  child: const CircleAvatar(
                    radius: 42,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 50, color: Colors.teal),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Falih Afnan F',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'NIM: 707012400017',
                  style: TextStyle(
                    fontSize: 14,
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Warga Terverifikasi • Kawasan Inti Pusat Pemerintahan (KIPP)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStatItem(context, 'NIK', '6471*********001'),
                    _buildStatItem(context, 'Zona', 'Sepaku A1'),
                    _buildStatItem(context, 'Status Akun', 'Aktif'),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),

        // Ringkasan Aktivitas Laporan
        Text(
          'Ringkasan Laporan Pengaduan',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _buildLaporanBox(
                context,
                title: 'Total Laporan',
                count: '4',
                color: Colors.blue,
                icon: Icons.assignment_outlined,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _buildLaporanBox(
                context,
                title: 'Diproses',
                count: '2',
                color: Colors.orange,
                icon: Icons.pending_actions_outlined,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _buildLaporanBox(
                context,
                title: 'Selesai',
                count: '1',
                color: Colors.green,
                icon: Icons.check_circle_outline,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),

        // Akses Menuju Halaman Penuh Riwayat Laporan (dengan BottomAppBar)
        Card(
          elevation: 0,
          color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
            side: BorderSide(
              color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.history_edu_rounded,
                      color: theme.colorScheme.primary,
                      size: 26,
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text(
                        'Akses Layanan Pengaduan Penuh',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Buka halaman riwayat laporan untuk melihat status tindak lanjut petugas di lapangan, menambah laporan baru, menyaring, dan mengekspor data.',
                  style: TextStyle(
                    fontSize: 12,
                    color: theme.colorScheme.onSurfaceVariant,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 14),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.riwayatLaporan);
                    },
                    icon: const Icon(Icons.open_in_new_rounded),
                    label: const Text('Buka Riwayat Laporan Lengkap'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStatItem(BuildContext context, String label, String value) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildLaporanBox(
    BuildContext context, {
    required String title,
    required String count,
    required Color color,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: 6),
          Text(
            count,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            title,
            style: const TextStyle(fontSize: 11),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
