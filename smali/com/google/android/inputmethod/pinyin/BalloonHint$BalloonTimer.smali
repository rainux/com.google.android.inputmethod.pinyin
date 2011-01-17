.class Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;
.super Landroid/os/Handler;
.source "BalloonHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/BalloonHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BalloonTimer"
.end annotation


# static fields
.field public static final ACTION_HIDE:I = 0x2

.field public static final ACTION_SHOW:I = 0x1

.field public static final ACTION_UPDATE:I = 0x3


# instance fields
.field private mAction:I

.field private mHeight:I

.field private mPositionInParent:[I

.field private mTimerPending:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/BalloonHint;


# direct methods
.method private constructor <init>(Lcom/google/android/inputmethod/pinyin/BalloonHint;)V
    .registers 3
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->this$0:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 280
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mPositionInParent:[I

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mTimerPending:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/inputmethod/pinyin/BalloonHint;Lcom/google/android/inputmethod/pinyin/BalloonHint$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;-><init>(Lcom/google/android/inputmethod/pinyin/BalloonHint;)V

    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mAction:I

    return v0
.end method

.method public isPending()Z
    .registers 2

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mTimerPending:Z

    return v0
.end method

.method public removeTimer()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mTimerPending:Z

    if-eqz v0, :cond_c

    .line 305
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mTimerPending:Z

    .line 306
    invoke-virtual {p0, p0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    const/4 v0, 0x1

    .line 310
    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 318
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mAction:I

    packed-switch v0, :pswitch_data_68

    .line 333
    :goto_7
    iput-boolean v7, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mTimerPending:Z

    .line 334
    return-void

    .line 320
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->this$0:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->access$200(Lcom/google/android/inputmethod/pinyin/BalloonHint;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->this$0:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->access$100(Lcom/google/android/inputmethod/pinyin/BalloonHint;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 321
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->this$0:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->this$0:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->access$200(Lcom/google/android/inputmethod/pinyin/BalloonHint;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x33

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->this$0:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-static {v5}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->access$100(Lcom/google/android/inputmethod/pinyin/BalloonHint;)[I

    move-result-object v5

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->showAtLocation(Landroid/view/View;III)V

    goto :goto_7

    .line 326
    :pswitch_38
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->this$0:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->dismiss()V

    goto :goto_7

    .line 329
    :pswitch_3e
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->this$0:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->access$200(Lcom/google/android/inputmethod/pinyin/BalloonHint;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->this$0:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->access$100(Lcom/google/android/inputmethod/pinyin/BalloonHint;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 330
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->this$0:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->this$0:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->access$100(Lcom/google/android/inputmethod/pinyin/BalloonHint;)[I

    move-result-object v3

    aget v3, v3, v6

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mWidth:I

    iget v4, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->update(IIII)V

    goto :goto_7

    .line 318
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_a
        :pswitch_38
        :pswitch_3e
    .end packed-switch
.end method

.method public startTimer(JI[III)V
    .registers 11
    .parameter "time"
    .parameter "action"
    .parameter "positionInParent"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 288
    iput p3, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mAction:I

    .line 289
    const/4 v0, 0x2

    if-eq v0, p3, :cond_13

    .line 290
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v1, p4, v3

    aput v1, v0, v3

    .line 291
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v1, p4, v2

    aput v1, v0, v2

    .line 293
    :cond_13
    iput p5, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mWidth:I

    .line 294
    iput p6, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mHeight:I

    .line 295
    invoke-virtual {p0, p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->mTimerPending:Z

    .line 297
    return-void
.end method
