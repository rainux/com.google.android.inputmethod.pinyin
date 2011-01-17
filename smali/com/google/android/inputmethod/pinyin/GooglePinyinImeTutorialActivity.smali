.class public Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;
.super Landroid/app/Activity;
.source "GooglePinyinImeTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ANIMATING_STATE:Ljava/lang/String; = "com.android.setupwizard.animating"

.field private static final ANIMATION_REPEAT_DELAY:I = 0xbb8

.field private static final ANIMATION_START_DELAY:I = 0x3e8

.field private static final ANIM_COUNT:I = 0x3

.field private static final PENDING_INTENT:Ljava/lang/String; = "pendingIntent"

.field private static final TAG:Ljava/lang/String; = "Tutorial"


# instance fields
.field private mAnimHelper:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

.field private mAnimating:Z

.field private mBackButton:Landroid/widget/Button;

.field private mHandView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mNextButton:Landroid/widget/Button;

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    invoke-direct {v0}, Lcom/google/android/inputmethod/pinyin/AnimationHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mAnimHelper:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mHandler:Landroid/os/Handler;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mAnimating:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mAnimating:Z

    .line 95
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mAnimHelper:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->stopAnimating()V

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected doBackButton()V
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->setResult(I)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->finish()V

    .line 122
    return-void
.end method

.method protected doNextButton()V
    .registers 2

    .prologue
    .line 129
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->setResult(I)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->finish()V

    .line 131
    return-void
.end method

.method protected initViews()V
    .registers 6

    .prologue
    .line 56
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->setContentView(I)V

    .line 57
    const v2, 0x7f0d000b

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mHandView:Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 60
    .local v1, intent:Landroid/content/Intent;
    const v2, 0x7f0d000d

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mNextButton:Landroid/widget/Button;

    .line 61
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_29
    const v2, 0x7f0d000c

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mBackButton:Landroid/widget/Button;

    .line 64
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mBackButton:Landroid/widget/Button;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hasNextScreen"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    .local v0, hasNextScreen:Z
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v2, :cond_56

    if-nez v0, :cond_56

    .line 69
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mNextButton:Landroid/widget/Button;

    const v3, 0x7f0a008f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 71
    :cond_56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->doNextButton()V

    .line 114
    :cond_7
    :goto_7
    return-void

    .line 113
    :cond_8
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mBackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->doBackButton()V

    goto :goto_7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->initViews()V

    .line 51
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mAnimHelper:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    const v2, 0x7f040001

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mHandView:Landroid/view/View;

    const/16 v5, 0x3e8

    const/16 v6, 0xbb8

    const/4 v7, 0x3

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->init(Landroid/content/Context;ILandroid/os/Handler;Landroid/view/View;III)V

    .line 53
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mAnimating:Z

    .line 88
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mAnimHelper:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->stopAnimating()V

    .line 89
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 76
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mAnimHelper:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->stopAnimating()V

    .line 77
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 102
    const-string v0, "com.android.setupwizard.animating"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mAnimating:Z

    .line 103
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mAnimating:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mAnimHelper:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->startAnimating()V

    .line 83
    :cond_c
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "com.android.setupwizard.animating"

    iget-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/GooglePinyinImeTutorialActivity;->mAnimating:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    return-void
.end method
