.class final Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$1;
.super Landroid/os/Handler;
.source "SoftKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 82
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_50

    .line 101
    :goto_6
    return-void

    .line 84
    :pswitch_7
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->access$000(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;)[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v1, v2

    .line 85
    .local v0, key:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-static {v1, v0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->access$100(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    goto :goto_6

    .line 88
    .end local v0           #key:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    :pswitch_17
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->access$000(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;)[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v1, v2

    .line 89
    .restart local v0       #key:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-static {v1, v0, v4}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->access$200(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)V

    goto :goto_6

    .line 92
    .end local v0           #key:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    :pswitch_27
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->access$000(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;)[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v1, v2

    .line 93
    .restart local v0       #key:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-static {v1, v0, v4}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->access$300(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)V

    .line 94
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->access$400(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    .line 98
    .end local v0           #key:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    :pswitch_49
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->access$500(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;)V

    goto :goto_6

    .line 82
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_7
        :pswitch_27
        :pswitch_17
        :pswitch_49
    .end packed-switch
.end method
