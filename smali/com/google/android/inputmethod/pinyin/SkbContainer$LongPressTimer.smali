.class Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;
.super Landroid/os/Handler;
.source "SkbContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/SkbContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LongPressTimer"
.end annotation


# static fields
.field public static final LONG_PRESS_KEYNUM1:I = 0x1

.field public static final LONG_PRESS_KEYNUM2:I = 0x3

.field public static final LONG_PRESS_TIMEOUT1:I = 0x1f4

.field private static final LONG_PRESS_TIMEOUT2:I = 0x64

.field private static final LONG_PRESS_TIMEOUT3:I = 0x64


# instance fields
.field private mResponseTimes:I

.field mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/SkbContainer;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/SkbContainer;Lcom/google/android/inputmethod/pinyin/SkbContainer;)V
    .registers 4
    .parameter
    .parameter "skbContainer"

    .prologue
    .line 574
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->this$0:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 572
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->mResponseTimes:I

    .line 575
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    .line 576
    return-void
.end method


# virtual methods
.method public removeTimer()Z
    .registers 2

    .prologue
    .line 584
    invoke-virtual {p0, p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 585
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 589
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->this$0:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    iget-boolean v2, v2, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mWaitForTouchUp:Z

    if-eqz v2, :cond_42

    .line 590
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->mResponseTimes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->mResponseTimes:I

    .line 591
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->this$0:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    iget-object v2, v2, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->repeatable()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 592
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->this$0:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    iget-object v2, v2, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->isUserDefKey()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 593
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->mResponseTimes:I

    if-ne v4, v2, :cond_42

    .line 594
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->this$0:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->access$000(Lcom/google/android/inputmethod/pinyin/SkbContainer;)Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->this$0:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    iget-object v3, v3, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    iget v3, v3, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyCode:I

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->tryHandleLongPressSwitch(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 596
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->this$0:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    iput-boolean v4, v2, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mDiscardEvent:Z

    .line 597
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->this$0:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->access$100(Lcom/google/android/inputmethod/pinyin/SkbContainer;J)V

    .line 618
    :cond_42
    :goto_42
    return-void

    .line 601
    :cond_43
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->this$0:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->this$0:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    iget-object v3, v3, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    invoke-static {v2, v3}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->access$200(Lcom/google/android/inputmethod/pinyin/SkbContainer;Lcom/google/android/inputmethod/pinyin/SoftKey;)V

    .line 603
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->mResponseTimes:I

    if-ge v2, v4, :cond_5b

    .line 604
    const-wide/16 v0, 0x1f4

    .line 610
    .local v0, timeout:J
    :goto_52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0, p0, v2, v3}, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_42

    .line 605
    .end local v0           #timeout:J
    :cond_5b
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->mResponseTimes:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_63

    .line 606
    const-wide/16 v0, 0x64

    .restart local v0       #timeout:J
    goto :goto_52

    .line 608
    .end local v0           #timeout:J
    :cond_63
    const-wide/16 v0, 0x64

    .restart local v0       #timeout:J
    goto :goto_52

    .line 613
    .end local v0           #timeout:J
    :cond_66
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->mResponseTimes:I

    if-ne v4, v2, :cond_42

    .line 614
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->this$0:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->access$300(Lcom/google/android/inputmethod/pinyin/SkbContainer;)V

    goto :goto_42
.end method

.method public startTimer()V
    .registers 5

    .prologue
    .line 579
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 580
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->mResponseTimes:I

    .line 581
    return-void
.end method
