.class public Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PinyinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/PinyinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnGestureListener"
.end annotation


# static fields
.field private static final MIN_X_FOR_DRAG:I = 0x3c

.field private static final MIN_Y_FOR_DRAG:I = 0x28

.field private static final VELOCITY_THRESHOLD_X1:F = 0.3f

.field private static final VELOCITY_THRESHOLD_X2:F = 0.7f

.field private static final VELOCITY_THRESHOLD_Y1:F = 0.2f

.field private static final VELOCITY_THRESHOLD_Y2:F = 0.45f


# instance fields
.field private mGestureRecognized:Z

.field private mMinVelocityX:F

.field private mMinVelocityY:F

.field private mNotGesture:Z

.field private mReponseGestures:Z

.field private mTimeDown:J

.field private mTimeLastOnScroll:J

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;Z)V
    .registers 4
    .parameter
    .parameter "reponseGestures"

    .prologue
    const v0, 0x7f7fffff

    .line 2112
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2095
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mMinVelocityX:F

    .line 2098
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mMinVelocityY:F

    .line 2113
    iput-boolean p2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mReponseGestures:Z

    .line 2114
    return-void
.end method


# virtual methods
.method public onDirectionGesture(I)V
    .registers 5
    .parameter "gravity"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 2203
    if-nez p1, :cond_5

    .line 2217
    :cond_4
    :goto_4
    return-void

    .line 2207
    :cond_5
    if-eq v2, p1, :cond_a

    const/4 v0, 0x5

    if-ne v0, p1, :cond_4

    .line 2208
    :cond_a
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1000(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2209
    if-ne v2, p1, :cond_22

    .line 2210
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1000(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->pageForward(ZZ)Z

    goto :goto_4

    .line 2212
    :cond_22
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1000(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->pageBackward(ZZ)Z

    goto :goto_4
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    const/high16 v0, 0x4f00

    const/4 v2, 0x0

    .line 2118
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mMinVelocityX:F

    .line 2119
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mMinVelocityY:F

    .line 2120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mTimeDown:J

    .line 2121
    iget-wide v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mTimeDown:J

    iput-wide v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mTimeLastOnScroll:J

    .line 2122
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mNotGesture:Z

    .line 2123
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mGestureRecognized:Z

    .line 2124
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "me1"
    .parameter "me2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 2199
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mGestureRecognized:Z

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 28
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 2130
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mNotGesture:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    const/16 v19, 0x0

    .line 2193
    :goto_a
    return v19

    .line 2131
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mGestureRecognized:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    const/16 v19, 0x1

    goto :goto_a

    .line 2133
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x4270

    cmpg-float v19, v19, v20

    if-gez v19, :cond_41

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x4220

    cmpg-float v19, v19, v20

    if-gez v19, :cond_41

    .line 2135
    const/16 v19, 0x0

    goto :goto_a

    .line 2137
    :cond_41
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    .line 2138
    .local v13, timeNow:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mTimeDown:J

    move-wide/from16 v19, v0

    sub-long v11, v13, v19

    .line 2139
    .local v11, spanTotal:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mTimeLastOnScroll:J

    move-wide/from16 v19, v0

    sub-long v9, v13, v19

    .line 2140
    .local v9, spanThis:J
    const-wide/16 v19, 0x0

    cmp-long v19, v19, v11

    if-nez v19, :cond_5d

    const-wide/16 v11, 0x1

    .line 2141
    :cond_5d
    const-wide/16 v19, 0x0

    cmp-long v19, v19, v9

    if-nez v19, :cond_65

    const-wide/16 v9, 0x1

    .line 2143
    :cond_65
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    sub-float v19, v19, v20

    move-wide v0, v11

    long-to-float v0, v0

    move/from16 v20, v0

    div-float v16, v19, v20

    .line 2144
    .local v16, vXTotal:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    sub-float v19, v19, v20

    move-wide v0, v11

    long-to-float v0, v0

    move/from16 v20, v0

    div-float v18, v19, v20

    .line 2147
    .local v18, vYTotal:F
    move/from16 v0, p3

    neg-float v0, v0

    move/from16 v19, v0

    move-wide v0, v9

    long-to-float v0, v0

    move/from16 v20, v0

    div-float v15, v19, v20

    .line 2148
    .local v15, vXThis:F
    move/from16 v0, p4

    neg-float v0, v0

    move/from16 v19, v0

    move-wide v0, v9

    long-to-float v0, v0

    move/from16 v20, v0

    div-float v17, v19, v20

    .line 2150
    .local v17, vYThis:F
    mul-float v7, v16, v15

    .line 2151
    .local v7, kX:F
    mul-float v8, v18, v17

    .line 2152
    .local v8, kY:F
    add-float v5, v7, v8

    .line 2153
    .local v5, k1:F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v20

    add-float v6, v19, v20

    .line 2155
    .local v6, k2:F
    div-float v19, v5, v6

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x3fe999999999999aL

    cmpg-double v19, v19, v21

    if-gez v19, :cond_c7

    .line 2156
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mNotGesture:Z

    .line 2157
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 2159
    :cond_c7
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 2160
    .local v3, absVXTotal:F
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2161
    .local v4, absVYTotal:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mMinVelocityX:F

    move/from16 v19, v0

    cmpg-float v19, v3, v19

    if-gez v19, :cond_de

    .line 2162
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mMinVelocityX:F

    .line 2164
    :cond_de
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mMinVelocityY:F

    move/from16 v19, v0

    cmpg-float v19, v4, v19

    if-gez v19, :cond_ed

    .line 2165
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mMinVelocityY:F

    .line 2168
    :cond_ed
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mMinVelocityX:F

    move/from16 v19, v0

    const v20, 0x3e99999a

    cmpg-float v19, v19, v20

    if-gez v19, :cond_113

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mMinVelocityY:F

    move/from16 v19, v0

    const v20, 0x3e4ccccd

    cmpg-float v19, v19, v20

    if-gez v19, :cond_113

    .line 2170
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mNotGesture:Z

    .line 2171
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 2174
    :cond_113
    const v19, 0x3f333333

    cmpl-float v19, v16, v19

    if-lez v19, :cond_147

    const v19, 0x3ee66666

    cmpg-float v19, v4, v19

    if-gez v19, :cond_147

    .line 2176
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mReponseGestures:Z

    move/from16 v19, v0

    if-eqz v19, :cond_132

    const/16 v19, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->onDirectionGesture(I)V

    .line 2177
    :cond_132
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mGestureRecognized:Z

    .line 2192
    :cond_13a
    :goto_13a
    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mTimeLastOnScroll:J

    .line 2193
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mGestureRecognized:Z

    move/from16 v19, v0

    goto/16 :goto_a

    .line 2178
    :cond_147
    const v19, -0x40cccccd

    cmpg-float v19, v16, v19

    if-gez v19, :cond_16f

    const v19, 0x3ee66666

    cmpg-float v19, v4, v19

    if-gez v19, :cond_16f

    .line 2180
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mReponseGestures:Z

    move/from16 v19, v0

    if-eqz v19, :cond_166

    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->onDirectionGesture(I)V

    .line 2181
    :cond_166
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mGestureRecognized:Z

    goto :goto_13a

    .line 2182
    :cond_16f
    const v19, 0x3ee66666

    cmpl-float v19, v18, v19

    if-lez v19, :cond_197

    const v19, 0x3f333333

    cmpg-float v19, v3, v19

    if-gez v19, :cond_197

    .line 2184
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mReponseGestures:Z

    move/from16 v19, v0

    if-eqz v19, :cond_18e

    const/16 v19, 0x50

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->onDirectionGesture(I)V

    .line 2185
    :cond_18e
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mGestureRecognized:Z

    goto :goto_13a

    .line 2186
    :cond_197
    const v19, -0x4119999a

    cmpg-float v19, v18, v19

    if-gez v19, :cond_13a

    const v19, 0x3f333333

    cmpg-float v19, v3, v19

    if-gez v19, :cond_13a

    .line 2188
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mReponseGestures:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1b6

    const/16 v19, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->onDirectionGesture(I)V

    .line 2189
    :cond_1b6
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;->mGestureRecognized:Z

    goto/16 :goto_13a
.end method
