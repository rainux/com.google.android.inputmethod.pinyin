.class Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;
.super Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;
.source "GridButtonWindow.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridButtonView"
.end annotation


# static fields
.field private static final CODE_LABEL:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field mHeight:I

.field private mKeyAbsHeight:F

.field private mKeyAbsWidth:F

.field private mLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPadding:Landroid/graphics/Rect;

.field private mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

.field mWidth:I

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    .line 128
    invoke-direct {p0, p2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mPadding:Landroid/graphics/Rect;

    .line 129
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {p2}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    .line 132
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    new-instance v1, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView$1;-><init>(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)V

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->addOnResourceChangedListener(Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->getCurrentResource()Lcom/google/android/inputmethod/pinyin/dev/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->initFromResources(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V

    .line 138
    invoke-virtual {p0, p0}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->setEventListener(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;)V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->setItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;Lcom/google/android/inputmethod/pinyin/dev/Resource;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->initFromResources(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V

    return-void
.end method

.method private initFromResources(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V
    .registers 8
    .parameter "resource"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    .line 150
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    const/16 v5, 0x1f

    invoke-virtual {v4, v5}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 151
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 153
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 155
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 156
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 157
    .local v2, screenWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 158
    .local v1, screenHeight:I
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getFloat(I)F

    move-result v4

    int-to-float v5, v1

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mKeyAbsHeight:F

    .line 160
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getFloat(I)F

    move-result v4

    int-to-float v5, v2

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mKeyAbsWidth:F

    .line 162
    return-void
.end method

.method private setItems(Ljava/util/List;)V
    .registers 25
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, labels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mLabels:Ljava/util/List;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mLabels:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v12

    .line 185
    .local v12, n:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->access$500(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)I

    move-result v18

    add-int v18, v18, v12

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->access$500(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)I

    move-result v19

    div-int v17, v18, v19

    .line 188
    .local v17, rowCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->access$500(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mKeyAbsWidth:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mWidth:I

    .line 190
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mKeyAbsHeight:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mHeight:I

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 193
    .local v13, paddingLeft:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 195
    .local v14, paddingTop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mKeyAbsWidth:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v8, v18, v19

    .line 196
    .local v8, keyWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mKeyAbsHeight:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v7, v18, v19

    .line 198
    .local v7, keyHeight:F
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v9, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/inputmethod/pinyin/dev/SoftKey;>;"
    new-array v15, v12, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    .line 200
    .local v15, rects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_108
    if-ge v5, v12, :cond_174

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->access$500(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)I

    move-result v18

    div-int v16, v5, v18

    .line 202
    .local v16, row:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->access$500(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)I

    move-result v18

    rem-int v4, v5, v18

    .line 203
    .local v4, col:I
    new-instance v18, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    move v0, v4

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v8

    add-float v19, v19, v13

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v7

    add-float v20, v20, v14

    add-int/lit8 v21, v4, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v8

    add-float v21, v21, v13

    add-int/lit8 v22, v16, 0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v7

    add-float v22, v22, v14

    invoke-direct/range {v18 .. v22}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v18, v15, v5

    .line 207
    aget-object v18, v15, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mLabels:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v5

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->createSoftKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;ILjava/lang/String;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v6

    .line 208
    .local v6, key:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v5, v5, 0x1

    goto :goto_108

    .line 211
    .end local v4           #col:I
    .end local v6           #key:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .end local v16           #row:I
    :cond_174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int/lit8 v11, v18, 0x2

    .line 212
    .local v11, marginY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->access$500(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    add-float v10, v13, v18

    .line 214
    .local v10, left:F
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-object/from16 v18, v0

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1           #labels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    check-cast p1, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->setSoftKeys([Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    .line 215
    return-void
.end method


# virtual methods
.method public createSoftKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;ILjava/lang/String;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 22
    .parameter "rect"
    .parameter "index"
    .parameter "label"

    .prologue
    .line 218
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v1, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    const/16 v6, 0x1a

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/16 v10, 0x1b

    const/4 v11, -0x1

    const/4 v13, 0x1

    const/16 v14, 0xf

    const/4 v15, -0x1

    const/16 v17, 0x9

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    move-object/from16 v12, p3

    move-object/from16 v16, p3

    invoke-direct/range {v0 .. v17}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    return-object v0
.end method

.method invokePopupHint(IIII)V
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->access$200(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)I

    move-result v0

    add-int/2addr p1, v0

    .line 172
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->access$300(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)I

    move-result v0

    add-int/2addr p2, v0

    .line 173
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mPopupHint:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_23

    .line 174
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mPopupHint:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->access$400(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 179
    :goto_22
    return-void

    .line 177
    :cond_23
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mPopupHint:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_22
.end method

.method public onKey(ILjava/lang/Object;)V
    .registers 6
    .parameter "key"
    .parameter "data"

    .prologue
    .line 230
    packed-switch p1, :pswitch_data_22

    .line 238
    .end local p2
    :cond_3
    :goto_3
    return-void

    .line 232
    .restart local p2
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->access$600(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 233
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 234
    .local v0, index:I
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->access$600(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mLabels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$OnClickListener;->onClick(ILjava/lang/Object;)V

    goto :goto_3

    .line 230
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onLongPress(ILjava/lang/Object;)V
    .registers 3
    .parameter "key"
    .parameter "data"

    .prologue
    .line 241
    return-void
.end method

.method public onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 166
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mWidth:I

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->setMeasuredDimension(II)V

    .line 167
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "me"

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 144
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->dismiss()V

    .line 145
    const/4 v0, 0x1

    return v0
.end method
