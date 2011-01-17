.class final Lcom/google/android/inputmethod/pinyin/PinyinIME$2;
.super Ljava/lang/Object;
.source "PinyinIME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/PinyinIME;->showOptionsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;)V
    .registers 2
    .parameter

    .prologue
    .line 1865
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$2;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "di"
    .parameter "position"

    .prologue
    .line 1868
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1869
    packed-switch p2, :pswitch_data_1e

    .line 1881
    :cond_6
    :goto_6
    return-void

    .line 1871
    :pswitch_7
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$2;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$700(Lcom/google/android/inputmethod/pinyin/PinyinIME;)V

    goto :goto_6

    .line 1874
    :pswitch_d
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$2;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1876
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_6

    .line 1877
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_6

    .line 1869
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method
