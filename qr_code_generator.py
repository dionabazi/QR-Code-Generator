import qrcode
import sys

def generate_qr_code(data, filename='qrcode.png'):
    # Generate QR code
    qr = qrcode.QRCode(
        version=1,
        error_correction=qrcode.constants.ERROR_CORRECT_L,
        box_size=10,
        border=4,
    )
    qr.add_data(data)
    qr.make(fit=True)

    img = qr.make_image(fill='black', back_color='white')
    img.save(filename)
    print(f"QR Code generated and saved as {filename}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python qr_code_generator.py <data>")
        sys.exit(1)

    data = ' '.join(sys.argv[1:])  # Join arguments to allow spaces
    generate_qr_code(data)
