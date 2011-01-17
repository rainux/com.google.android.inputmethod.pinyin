.class public Lcom/google/android/inputmethod/pinyin/SkbTemplate;
.super Ljava/lang/Object;
.source "SkbTemplate.java"


# instance fields
.field private mBalloonBg:Landroid/graphics/drawable/Drawable;

.field private mKeyIconRecords:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/inputmethod/pinyin/KeyIconRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyRecords:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/inputmethod/pinyin/KeyRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTypeList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/inputmethod/pinyin/SoftKeyType;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupBg:Landroid/graphics/drawable/Drawable;

.field private mSkbBg:Landroid/graphics/drawable/Drawable;

.field private mSkbTemplateId:I

.field private mXMargin:F

.field private mYMargin:F


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "skbTemplateId"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mXMargin:F

    .line 55
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mYMargin:F

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyRecords:Ljava/util/Vector;

    .line 70
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mSkbTemplateId:I

    .line 71
    return-void
.end method


# virtual methods
.method public addDefaultKey(ILcom/google/android/inputmethod/pinyin/SoftKey;)V
    .registers 7
    .parameter "keyId"
    .parameter "softKey"

    .prologue
    .line 178
    if-nez p2, :cond_3

    .line 191
    :goto_2
    return-void

    .line 180
    :cond_3
    new-instance v0, Lcom/google/android/inputmethod/pinyin/KeyRecord;

    invoke-direct {v0}, Lcom/google/android/inputmethod/pinyin/KeyRecord;-><init>()V

    .line 181
    .local v0, keyRecord:Lcom/google/android/inputmethod/pinyin/KeyRecord;
    iput p1, v0, Lcom/google/android/inputmethod/pinyin/KeyRecord;->keyId:I

    .line 182
    iput-object p2, v0, Lcom/google/android/inputmethod/pinyin/KeyRecord;->softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 184
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 185
    .local v2, size:I
    const/4 v1, 0x0

    .line 186
    .local v1, pos:I
    :goto_13
    if-ge v1, v2, :cond_21

    .line 187
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/inputmethod/pinyin/KeyRecord;

    iget v3, v3, Lcom/google/android/inputmethod/pinyin/KeyRecord;->keyId:I

    if-lt v3, p1, :cond_27

    .line 190
    :cond_21
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 188
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public addDefaultKeyIcons(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .parameter "keyCode"
    .parameter "icon"
    .parameter "iconPopup"

    .prologue
    .line 127
    if-eqz p2, :cond_4

    if-nez p3, :cond_5

    .line 141
    :cond_4
    :goto_4
    return-void

    .line 129
    :cond_5
    new-instance v0, Lcom/google/android/inputmethod/pinyin/KeyIconRecord;

    invoke-direct {v0}, Lcom/google/android/inputmethod/pinyin/KeyIconRecord;-><init>()V

    .line 130
    .local v0, iconRecord:Lcom/google/android/inputmethod/pinyin/KeyIconRecord;
    iput-object p2, v0, Lcom/google/android/inputmethod/pinyin/KeyIconRecord;->icon:Landroid/graphics/drawable/Drawable;

    .line 131
    iput-object p3, v0, Lcom/google/android/inputmethod/pinyin/KeyIconRecord;->iconPopup:Landroid/graphics/drawable/Drawable;

    .line 132
    iput p1, v0, Lcom/google/android/inputmethod/pinyin/KeyIconRecord;->keyCode:I

    .line 134
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 135
    .local v2, size:I
    const/4 v1, 0x0

    .line 136
    .local v1, pos:I
    :goto_17
    if-ge v1, v2, :cond_25

    .line 137
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/inputmethod/pinyin/KeyIconRecord;

    iget v3, v3, Lcom/google/android/inputmethod/pinyin/KeyIconRecord;->keyCode:I

    if-lt v3, p1, :cond_2b

    .line 140
    :cond_25
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 138
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public addKeyType(Lcom/google/android/inputmethod/pinyin/SoftKeyType;)Z
    .registers 4
    .parameter "keyType"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p1, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mKeyTypeId:I

    if-eq v0, v1, :cond_c

    const/4 v0, 0x0

    .line 117
    :goto_b
    return v0

    .line 116
    :cond_c
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 117
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public createKeyType(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/inputmethod/pinyin/SoftKeyType;
    .registers 5
    .parameter "id"
    .parameter "bg"
    .parameter "hlBg"

    .prologue
    .line 110
    new-instance v0, Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/inputmethod/pinyin/SoftKeyType;-><init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getBalloonBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDefaultKey(I)Lcom/google/android/inputmethod/pinyin/SoftKey;
    .registers 6
    .parameter "keyId"

    .prologue
    .line 194
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 195
    .local v2, size:I
    const/4 v1, 0x0

    .line 196
    .local v1, pos:I
    :goto_7
    if-ge v1, v2, :cond_1f

    .line 197
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/KeyRecord;

    .line 198
    .local v0, keyRecord:Lcom/google/android/inputmethod/pinyin/KeyRecord;
    iget v3, v0, Lcom/google/android/inputmethod/pinyin/KeyRecord;->keyId:I

    if-ge v3, p1, :cond_18

    .line 199
    add-int/lit8 v1, v1, 0x1

    .line 200
    goto :goto_7

    .line 202
    :cond_18
    iget v3, v0, Lcom/google/android/inputmethod/pinyin/KeyRecord;->keyId:I

    if-ne v3, p1, :cond_1f

    .line 203
    iget-object v3, v0, Lcom/google/android/inputmethod/pinyin/KeyRecord;->softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 207
    .end local v0           #keyRecord:Lcom/google/android/inputmethod/pinyin/KeyRecord;
    :goto_1e
    return-object v3

    :cond_1f
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method public getDefaultKeyIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter "keyCode"

    .prologue
    .line 144
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 145
    .local v2, size:I
    const/4 v1, 0x0

    .line 146
    .local v1, pos:I
    :goto_7
    if-ge v1, v2, :cond_1f

    .line 147
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/KeyIconRecord;

    .line 148
    .local v0, iconRecord:Lcom/google/android/inputmethod/pinyin/KeyIconRecord;
    iget v3, v0, Lcom/google/android/inputmethod/pinyin/KeyIconRecord;->keyCode:I

    if-ge v3, p1, :cond_18

    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 150
    goto :goto_7

    .line 152
    :cond_18
    iget v3, v0, Lcom/google/android/inputmethod/pinyin/KeyIconRecord;->keyCode:I

    if-ne v3, p1, :cond_1f

    .line 153
    iget-object v3, v0, Lcom/google/android/inputmethod/pinyin/KeyIconRecord;->icon:Landroid/graphics/drawable/Drawable;

    .line 157
    .end local v0           #iconRecord:Lcom/google/android/inputmethod/pinyin/KeyIconRecord;
    :goto_1e
    return-object v3

    :cond_1f
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method public getDefaultKeyIconPopup(I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter "keyCode"

    .prologue
    .line 161
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 162
    .local v2, size:I
    const/4 v1, 0x0

    .line 163
    .local v1, pos:I
    :goto_7
    if-ge v1, v2, :cond_1f

    .line 164
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/KeyIconRecord;

    .line 165
    .local v0, iconRecord:Lcom/google/android/inputmethod/pinyin/KeyIconRecord;
    iget v3, v0, Lcom/google/android/inputmethod/pinyin/KeyIconRecord;->keyCode:I

    if-ge v3, p1, :cond_18

    .line 166
    add-int/lit8 v1, v1, 0x1

    .line 167
    goto :goto_7

    .line 169
    :cond_18
    iget v3, v0, Lcom/google/android/inputmethod/pinyin/KeyIconRecord;->keyCode:I

    if-ne v3, p1, :cond_1f

    .line 170
    iget-object v3, v0, Lcom/google/android/inputmethod/pinyin/KeyIconRecord;->iconPopup:Landroid/graphics/drawable/Drawable;

    .line 174
    .end local v0           #iconRecord:Lcom/google/android/inputmethod/pinyin/KeyIconRecord;
    :goto_1e
    return-object v3

    :cond_1f
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method public getKeyType(I)Lcom/google/android/inputmethod/pinyin/SoftKeyType;
    .registers 3
    .parameter "typeId"

    .prologue
    .line 121
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    .line 122
    .end local p0
    :goto_b
    return-object v0

    .restart local p0
    :cond_c
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    move-object v0, p0

    goto :goto_b
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mPopupBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSkbBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mSkbBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSkbTemplateId()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mSkbTemplateId:I

    return v0
.end method

.method public getXMargin()F
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mXMargin:F

    return v0
.end method

.method public getYMargin()F
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mYMargin:F

    return v0
.end method

.method public setBackgrounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "skbBg"
    .parameter "balloonBg"
    .parameter "popupBg"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mSkbBg:Landroid/graphics/drawable/Drawable;

    .line 80
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    .line 81
    iput-object p3, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mPopupBg:Landroid/graphics/drawable/Drawable;

    .line 82
    return-void
.end method

.method public setMargins(FF)V
    .registers 3
    .parameter "xMargin"
    .parameter "yMargin"

    .prologue
    .line 97
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mXMargin:F

    .line 98
    iput p2, p0, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->mYMargin:F

    .line 99
    return-void
.end method
