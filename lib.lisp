
(asdf:load-system :cffi)

(defconstant +spec-max-draw+ 16)
(defconstant +spec-max-x+ 10)
(defconstant +spec-max-y+ 5)
(defconstant +spec-max-xy+ (* +spec-max-x+ +spec-max-y+))
(defconstant +spec-max-pre-xy+ (- +spec-max-xy+ 1))

(defconstant +upper-left+ 0)
(defconstant +upper-middle+ 1)
(defconstant +upper-right+ 2)
(defconstant +middle-left+ 3)
(defconstant +middle-central+ 4)
(defconstant +middle-right+ 5)
(defconstant +lower-left+ 6)
(defconstant +lower-middle+ 7)
(defconstant +lower-right+ 8)

(defvar *position* (list +upper-left+ +upper-middle+ +upper-right+ +middle-left+ +middle-central+ +middle-right+ +lower-left+ +lower-middle+ +lower-right+))

(defconstant +sheet-none+ 95)
(defconstant +sheet-bust+ 98)

(defvar *sheet* (list +sheet-none+ +sheet-bust+))

(defconstant +part-none+ 95)
(defconstant +part-arm-left+ 97)
(defconstant +part-arm-right+ 65)
(defconstant +part-boobs+ 98)
(defconstant +part-clavicle+ 99)
(defconstant +part-ear-left+ 101)
(defconstant +part-ear-right+ 69)
(defconstant +part-eye-left+ 121)
(defconstant +part-eye-right+ 89)
(defconstant +part-hair-top+ 111)
(defconstant +part-hair-left+ 114)
(defconstant +part-hair-right+ 82)
(defconstant +part-hand-left+ 100)
(defconstant +part-hand-right+ 68)
(defconstant +part-mouth+ 109)
(defconstant +part-tail+ 116)
(defconstant +part-bell+ 108)
(defconstant +part-exclamation-mark+ 120)
(defconstant +part-exclamation-marks+ 88)
(defconstant +part-heart+ 104)
(defconstant +part-hearts+ 72)
(defconstant +part-lantern+ 110)
(defconstant +part-question-mark+ 113)
(defconstant +part-question-marks+ 81)
(defconstant +part-wool-ball+ 119)

(defvar *part* (list +part-none+ +part-arm-left+ +part-arm-right+ +part-boobs+ +part-clavicle+ +part-ear-left+ +part-ear-right+ +part-eye-left+ +part-eye-right+ +part-hair-top+ +part-hair-left+ +part-hair-right+ +part-hand-left+ +part-hand-right+ +part-mouth+ +part-tail+ +part-bell+ +part-exclamation-mark+ +part-exclamation-marks+ +part-heart+ +part-hearts+ +part-lantern+ +part-question-mark+ +part-question-marks+ +part-wool-ball+ ))

(defconstant +emotion-none+ 95)
(defconstant +emotion-angry+ 97)
(defconstant +emotion-happy+ 104)
(defconstant +emotion-love+ 108)
(defconstant +emotion-malicious+ 109)
(defconstant +emotion-misunderstanding+ 105)
(defconstant +emotion-shocked+ 111)
(defconstant +emotion-sleepy+ 115)
(defconstant +emotion-speechless+ 101)

(defvar *emotion* (list +emotion-none+ +emotion-angry+ +emotion-happy+ +emotion-love+ +emotion-malicious+ +emotion-misunderstanding+ +emotion-shocked+ +emotion-sleepy+ +emotion-speechless+))



(cffi:defcstruct tuple
  (part :unsigned-char)
  (emotion :unsigned-char))

(defstruct library-state
  sheet
  emotions
  draws
  position
  cartesian
  message
  unmount)

(sb-ext:exit)

;#[no_mangle]
;pub unsafe extern "C" fn start(state: *mut LibraryState, _: *mut libc::c_void) {
;    if let Some(mut state) = state.as_mut() {
;        state.sheet = Sheet::Bust;
;        libc::memcpy(
;            state.message.as_mut_ptr() as *mut libc::c_void,
;            b"hello".as_ptr() as *const libc::c_void,
;            5
;        );
;    }
;    libc::write(1, b"hell5\n".as_ptr() as *const libc::c_void, 6);
;}

;#[lang = "eh_personality"] extern fn rust_eh_personality() {}
;#[lang = "panic_fmt"] extern fn rust_begin_panic() -> ! { loop {} }
