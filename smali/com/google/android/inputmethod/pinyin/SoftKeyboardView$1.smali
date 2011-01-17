.class final Lcom/google/android/inputmethod/pinyin/SoftKeyboardView$1;
.super Ljava/lang/Object;
.source "SoftKeyboardView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->onKeyRelease(II)Lcom/google/android/inputmethod/pinyin/SoftKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;)V
    .registers 2
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView$1;->this$0:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "di"
    .parameter "position"

    .prologue
    .line 415
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 416
    packed-switch p2, :pswitch_data_22

    .line 425
    :goto_6
    return-void

    .line 418
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView$1;->this$0:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->access$000(Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;)Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->resetKeyShift()V

    .line 419
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView$1;->this$0:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->access$000(Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;)Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->saveBiasPref()V

    goto :goto_6

    .line 422
    :pswitch_1a
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->getInstance()Lcom/google/android/inputmethod/pinyin/KeyPressLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->reset()V

    goto :goto_6

    .line 416
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1a
    .end packed-switch
.end method
