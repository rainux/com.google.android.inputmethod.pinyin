.class public Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;
.super Lcom/google/android/inputmethod/pinyin/dev/Resource;
.source "PortraitResource.java"


# static fields
.field private static final LEFT_COLUMN_WIDTH:F = 0.15f

.field private static final RIGHT_COLUMN_WIDTH:F = 0.15f


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/Resource;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 17
    .parameter "context"

    .prologue
    .line 26
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200b9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 28
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020092

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 30
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020093

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 32
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020092

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 34
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020093

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 36
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020092

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 38
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020093

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 40
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020010

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 42
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020011

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 44
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020068

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 46
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0xa

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020069

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 48
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0xb

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200ab

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 50
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0xc

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200ac

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 52
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0xd

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02008a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 54
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0xe

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02008b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 56
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0xf

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02007f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 58
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 60
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020004

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 62
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020007

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 64
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020008

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 66
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 68
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02007f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 70
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200bd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 72
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200be

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 74
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x18

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02006e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 76
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02006f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 78
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x1a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020092

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 80
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x1b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020093

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 82
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x1c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200bf

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 84
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x1d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200c0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 86
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x1e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02000d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 88
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x1f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020080

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 90
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x21

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200af

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 92
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x22

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200b0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 94
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x23

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020088

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 96
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x24

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020089

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 98
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x25

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200cc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 100
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x26

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200cd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 102
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x27

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200a3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 104
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x28

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200a4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 106
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x29

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200a1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 108
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x2a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200a2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 110
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x2b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020072

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 112
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x45

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020073

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 114
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x2c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020070

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 116
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x46

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020071

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 118
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x2d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200ad

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 120
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x2e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200ae

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 122
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x9c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200b2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 124
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x9d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200b4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 126
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x2f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200b1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 128
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x30

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200b3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 130
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x31

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020086

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 132
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x32

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020087

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 134
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x33

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020084

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 136
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x34

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020085

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 138
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x35

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200bb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 140
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x36

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200bc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 142
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x37

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200c7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 144
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x38

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200c8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 146
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x39

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02006a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 148
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x3a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02006b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 150
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x3b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02006c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 152
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x3c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02006d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 154
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x3d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200a5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 156
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x3e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200a6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 158
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x3f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02000b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 160
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x40

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02000c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 162
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x41

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200b5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 164
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x42

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200b6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 166
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x43

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200b7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 168
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x44

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200b8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 170
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x47

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02008d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 172
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x48

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02008e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 174
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x49

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02008f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 176
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x4a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02008e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 178
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x4b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200aa

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 180
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x4c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020018

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 182
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x4d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020019

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 184
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x4e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02001a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 186
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x4f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02001b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 188
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x50

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02001c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 190
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x51

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02001d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 192
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x52

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02001e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 194
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x53

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02001f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 196
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x54

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020020

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 198
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x55

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020021

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 200
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x56

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020022

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 202
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x57

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020023

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 204
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x58

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020024

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 206
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x59

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020025

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 208
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x5a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020026

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 210
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x5b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020027

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 212
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x5c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020028

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 214
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x5d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020029

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 216
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x5e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02002a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 218
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x5f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02002b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 220
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x60

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02002c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 222
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x61

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02002d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 224
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x62

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02002e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 226
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x63

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02002f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 228
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x64

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020030

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 230
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x65

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020031

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 232
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x66

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020032

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 234
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x67

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020033

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 236
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x68

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020034

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 238
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x69

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020035

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 240
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x6a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020036

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 242
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x6b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020037

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 244
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x6c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020038

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 246
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x6d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020039

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 248
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x6e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02003a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 250
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x6f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02003b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 252
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x70

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02003c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 254
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x71

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02003d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 256
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x72

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02003e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 258
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x73

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02003f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 260
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x74

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020040

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 262
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x75

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020041

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 264
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x76

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020042

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 266
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x77

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020043

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 268
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x78

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020044

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 270
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x79

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020045

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 272
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x7a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020046

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 274
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x7b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020047

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 276
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x7c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020048

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 278
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x7d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020049

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 280
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x7e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02004a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 282
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x7f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02004b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 284
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x80

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02004c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 286
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x81

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02004d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 288
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x82

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02004e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 290
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x83

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02004f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 292
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x84

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020050

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 294
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x85

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020051

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 296
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x86

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020052

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 298
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x87

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020053

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 300
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x88

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020054

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 302
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x89

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020055

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 304
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x8a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020056

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 306
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x8b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020057

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 308
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x8c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020058

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 310
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x8d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020059

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 312
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x8e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02005a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 314
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x8f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02005b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 316
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x90

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02005c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 318
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x91

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02005d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 320
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x92

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02005e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 322
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x93

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02005f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 324
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x94

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020060

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 326
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x95

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020061

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 328
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x96

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020062

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 330
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x97

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020063

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 332
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x98

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020064

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 334
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x99

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020065

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 336
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x9a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020066

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 338
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mImages:[Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x9b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020067

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 345
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mFloats:[F

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f0b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x461c4000

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 348
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mFloats:[F

    const/4 v9, 0x1

    const v10, 0x3b23d70a

    aput v10, v8, v9

    .line 349
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mFloats:[F

    const/4 v9, 0x2

    const v10, 0x3dac0831

    aput v10, v8, v9

    .line 350
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mFloats:[F

    const/4 v9, 0x3

    const v10, 0x3dcccccd

    aput v10, v8, v9

    .line 351
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mFloats:[F

    const/4 v9, 0x4

    const v10, 0x3c902de0

    aput v10, v8, v9

    .line 352
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mFloats:[F

    const/4 v9, 0x5

    const/high16 v10, 0x3f80

    aput v10, v8, v9

    .line 353
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mFloats:[F

    const/4 v9, 0x6

    const v10, 0x3d75c28f

    aput v10, v8, v9

    .line 354
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mFloats:[F

    const/16 v9, 0x8

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mFloats:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    const/high16 v11, 0x40a0

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 355
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mFloats:[F

    const/4 v9, 0x7

    const v10, 0x3e2e147b

    aput v10, v8, v9

    .line 356
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mFloats:[F

    const/16 v9, 0x9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-float v10, v10

    aput v10, v8, v9

    .line 358
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mFloats:[F

    const/16 v9, 0xa

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b000a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-float v10, v10

    aput v10, v8, v9

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 362
    .local v6, tinySize:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 363
    .local v3, smallSize:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 364
    .local v4, smallerSize:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 365
    .local v5, spellingSize:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 366
    .local v2, normalSize:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 367
    .local v0, bigSize:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 369
    .local v1, footerSize:I
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 370
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 371
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 372
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/high16 v9, -0x100

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 374
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 375
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 377
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x2

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 378
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 379
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 380
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const v9, -0x3f3f40

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 382
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 383
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 385
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xb

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 386
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xb

    aget-object v8, v8, v9

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 387
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xb

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 388
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xb

    aget-object v8, v8, v9

    const v9, -0x7f7f80

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xb

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 390
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xb

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 391
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xb

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 393
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x1

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 394
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 395
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 396
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 398
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 399
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 401
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x3

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 402
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    int-to-float v9, v3

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 403
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 404
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 406
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 408
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xc

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 409
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xc

    aget-object v8, v8, v9

    int-to-float v9, v4

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 410
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xc

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 411
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xc

    aget-object v8, v8, v9

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xc

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 413
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xc

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 415
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xe

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 416
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xe

    aget-object v8, v8, v9

    int-to-float v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 417
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xe

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 418
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xe

    aget-object v8, v8, v9

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xe

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 420
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xe

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 422
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x4

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 423
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    int-to-float v9, v3

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 424
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 425
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 427
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 428
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 430
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xf

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 431
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xf

    aget-object v8, v8, v9

    int-to-float v9, v4

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 432
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xf

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 433
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xf

    aget-object v8, v8, v9

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xf

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 435
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xf

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 436
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xf

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 438
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x5

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 439
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    int-to-float v9, v3

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 440
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 441
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const v9, -0x3800b0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 443
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 444
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 446
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xd

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 447
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xd

    aget-object v8, v8, v9

    int-to-float v9, v4

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 448
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xd

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 449
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xd

    aget-object v8, v8, v9

    const v9, -0x3800b0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 450
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xd

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 451
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xd

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 452
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xd

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 454
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x6

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 455
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    int-to-float v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 456
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 457
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 458
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 459
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 461
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x7

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 462
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x7

    aget-object v8, v8, v9

    int-to-float v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 463
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x7

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 464
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x7

    aget-object v8, v8, v9

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 465
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x7

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 466
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x7

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 467
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x7

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 469
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x8

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 470
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x8

    aget-object v8, v8, v9

    int-to-float v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 471
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x8

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 472
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x8

    aget-object v8, v8, v9

    const/high16 v9, -0x100

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 473
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x8

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 474
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x8

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 476
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x9

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 477
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x9

    aget-object v8, v8, v9

    int-to-float v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 478
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x9

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 479
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x9

    aget-object v8, v8, v9

    const/high16 v9, -0x100

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 480
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x9

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 481
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x9

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 482
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x9

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 484
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xa

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 485
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xa

    aget-object v8, v8, v9

    int-to-float v9, v0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 486
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xa

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 487
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xa

    aget-object v8, v8, v9

    const/high16 v9, -0x100

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xa

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 489
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xa

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 490
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0xa

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 492
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x10

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 493
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x10

    aget-object v8, v8, v9

    int-to-float v9, v1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 494
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x10

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 495
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x10

    aget-object v8, v8, v9

    const v9, -0x555556

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 496
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x10

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 497
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x10

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 498
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mPaints:[Landroid/graphics/Paint;

    const/16 v9, 0x10

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 500
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "\u62fc"

    aput-object v10, v8, v9

    .line 501
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/4 v9, 0x1

    const-string v10, "\u62fc\u97f3"

    aput-object v10, v8, v9

    .line 502
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/4 v9, 0x2

    const-string v10, "\u7b14\u5212"

    aput-object v10, v8, v9

    .line 503
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/4 v9, 0x3

    const-string v10, "\u7b14\u5212"

    aput-object v10, v8, v9

    .line 504
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/4 v9, 0x4

    const-string v10, "abc"

    aput-object v10, v8, v9

    .line 505
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/4 v9, 0x5

    const-string v10, "123"

    aput-object v10, v8, v9

    .line 506
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/4 v9, 0x6

    const-string v10, "!@:)"

    aput-object v10, v8, v9

    .line 507
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/4 v9, 0x7

    const-string v10, ":-)"

    aput-object v10, v8, v9

    .line 508
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x8

    const-string v10, "0"

    aput-object v10, v8, v9

    .line 509
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x9

    const-string v10, "1"

    aput-object v10, v8, v9

    .line 510
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0xa

    const-string v10, "2"

    aput-object v10, v8, v9

    .line 511
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0xb

    const-string v10, "3"

    aput-object v10, v8, v9

    .line 512
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0xc

    const-string v10, "4"

    aput-object v10, v8, v9

    .line 513
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0xd

    const-string v10, "5"

    aput-object v10, v8, v9

    .line 514
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0xe

    const-string v10, "6"

    aput-object v10, v8, v9

    .line 515
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0xf

    const-string v10, "7"

    aput-object v10, v8, v9

    .line 516
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x10

    const-string v10, "8"

    aput-object v10, v8, v9

    .line 517
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x11

    const-string v10, "9"

    aput-object v10, v8, v9

    .line 518
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x12

    const-string v10, "-"

    aput-object v10, v8, v9

    .line 519
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x13

    const-string v10, "."

    aput-object v10, v8, v9

    .line 520
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x14

    const-string v10, "\u4e00"

    aput-object v10, v8, v9

    .line 521
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x15

    const-string v10, "\u4e28"

    aput-object v10, v8, v9

    .line 522
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x16

    const-string v10, "\u4e3f"

    aput-object v10, v8, v9

    .line 523
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x17

    const-string v10, "\u4e36"

    aput-object v10, v8, v9

    .line 524
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x18

    const-string v10, "\u4e59"

    aput-object v10, v8, v9

    .line 525
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x19

    const-string v10, "\u901a\u914d"

    aput-object v10, v8, v9

    .line 526
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x1a

    const-string v10, "?"

    aput-object v10, v8, v9

    .line 527
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x1b

    const-string v10, "!"

    aput-object v10, v8, v9

    .line 528
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x1c

    const-string v10, ":"

    aput-object v10, v8, v9

    .line 529
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x1d

    const-string v10, ","

    aput-object v10, v8, v9

    .line 530
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x1e

    const-string v10, "Space"

    aput-object v10, v8, v9

    .line 531
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x1f

    const-string v10, "Lock"

    aput-object v10, v8, v9

    .line 532
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x20

    const-string v10, "Unlock"

    aput-object v10, v8, v9

    .line 533
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x21

    const-string v10, "\u534a\u89d2"

    aput-object v10, v8, v9

    .line 534
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x22

    const-string v10, "\u5168\u89d2"

    aput-object v10, v8, v9

    .line 535
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x23

    const-string v10, "PgUp"

    aput-object v10, v8, v9

    .line 536
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x24

    const-string v10, "PgDn"

    aput-object v10, v8, v9

    .line 537
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x25

    const-string v10, "*"

    aput-object v10, v8, v9

    .line 538
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x26

    const-string v10, "#"

    aput-object v10, v8, v9

    .line 539
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x27

    const-string v10, "ABC"

    aput-object v10, v8, v9

    .line 540
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x28

    const-string v10, "DEF"

    aput-object v10, v8, v9

    .line 541
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x29

    const-string v10, "GHI"

    aput-object v10, v8, v9

    .line 542
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x2a

    const-string v10, "JKL"

    aput-object v10, v8, v9

    .line 543
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x2b

    const-string v10, "MNO"

    aput-object v10, v8, v9

    .line 544
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x2c

    const-string v10, "PQRS"

    aput-object v10, v8, v9

    .line 545
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x2d

    const-string v10, "TUV"

    aput-object v10, v8, v9

    .line 546
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x2e

    const-string v10, "WXYZ"

    aput-object v10, v8, v9

    .line 547
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x38

    const-string v10, "abc"

    aput-object v10, v8, v9

    .line 548
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x39

    const-string v10, "def"

    aput-object v10, v8, v9

    .line 549
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x3a

    const-string v10, "ghi"

    aput-object v10, v8, v9

    .line 550
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x3b

    const-string v10, "jkl"

    aput-object v10, v8, v9

    .line 551
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x3c

    const-string v10, "mno"

    aput-object v10, v8, v9

    .line 552
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x3d

    const-string v10, "pqrs"

    aput-object v10, v8, v9

    .line 553
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x3e

    const-string v10, "tuv"

    aput-object v10, v8, v9

    .line 554
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x3f

    const-string v10, "wxyz"

    aput-object v10, v8, v9

    .line 555
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x2f

    const-string v10, "\u66f4\u591a"

    aput-object v10, v8, v9

    .line 556
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x30

    const-string v10, "\uff0c"

    aput-object v10, v8, v9

    .line 557
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x31

    const-string v10, "\u3002"

    aput-object v10, v8, v9

    .line 558
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x32

    const-string v10, "\uff1f"

    aput-object v10, v8, v9

    .line 559
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x33

    const-string v10, "\uff01"

    aput-object v10, v8, v9

    .line 560
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x34

    const-string v10, "\u4e0b\u4e2a"

    aput-object v10, v8, v9

    .line 561
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x35

    const-string v10, "\u53bb\u5f80"

    aput-object v10, v8, v9

    .line 562
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x36

    const-string v10, "\u5b8c\u6210"

    aput-object v10, v8, v9

    .line 563
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x37

    const-string v10, "\u53d1\u9001"

    aput-object v10, v8, v9

    .line 564
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x42

    const-string v10, "\u6e05\u9664"

    aput-object v10, v8, v9

    .line 565
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x40

    const-string v10, "/"

    aput-object v10, v8, v9

    .line 566
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mStrings:[Ljava/lang/String;

    const/16 v9, 0x41

    const-string v10, "@"

    aput-object v10, v8, v9

    .line 568
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x3e19999a

    const v14, 0x3e4ccccd

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 569
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/4 v9, 0x1

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/4 v11, 0x0

    const v12, 0x3e4ccccd

    const v13, 0x3e19999a

    const v14, 0x3ecccccd

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 570
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/4 v9, 0x2

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/4 v11, 0x0

    const v12, 0x3ecccccd

    const v13, 0x3e19999a

    const v14, 0x3f19999a

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 571
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/4 v9, 0x3

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/4 v11, 0x0

    const v12, 0x3f19999a

    const v13, 0x3e19999a

    const v14, 0x3f4ccccd

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 572
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/4 v9, 0x4

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/4 v11, 0x0

    const v12, 0x3f4ccccd

    const v13, 0x3e19999a

    const/high16 v14, 0x3f80

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 574
    const v7, 0x3e6eeef0

    .line 575
    .local v7, width:F
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/4 v9, 0x5

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3e19999a

    const/4 v12, 0x0

    const v13, 0x3e19999a

    add-float/2addr v13, v7

    const/high16 v14, 0x3e80

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 577
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/4 v9, 0x6

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3e19999a

    add-float/2addr v11, v7

    const/4 v12, 0x0

    const v13, 0x3e19999a

    const/high16 v14, 0x4000

    mul-float/2addr v14, v7

    add-float/2addr v13, v14

    const/high16 v14, 0x3e80

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 579
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/4 v9, 0x7

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3e19999a

    const/high16 v12, 0x4000

    mul-float/2addr v12, v7

    add-float/2addr v11, v12

    const/4 v12, 0x0

    const v13, 0x3e19999a

    const/high16 v14, 0x4040

    mul-float/2addr v14, v7

    add-float/2addr v13, v14

    const/high16 v14, 0x3e80

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 581
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v9, 0x8

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3e19999a

    const/high16 v12, 0x3e80

    const v13, 0x3e19999a

    add-float/2addr v13, v7

    const/high16 v14, 0x3f00

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 583
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v9, 0x9

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3e19999a

    add-float/2addr v11, v7

    const/high16 v12, 0x3e80

    const v13, 0x3e19999a

    const/high16 v14, 0x4000

    mul-float/2addr v14, v7

    add-float/2addr v13, v14

    const/high16 v14, 0x3f00

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 585
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v9, 0xa

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3e19999a

    const/high16 v12, 0x4000

    mul-float/2addr v12, v7

    add-float/2addr v11, v12

    const/high16 v12, 0x3e80

    const v13, 0x3e19999a

    const/high16 v14, 0x4040

    mul-float/2addr v14, v7

    add-float/2addr v13, v14

    const/high16 v14, 0x3f00

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 587
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v9, 0xb

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3e19999a

    const/high16 v12, 0x3f00

    const v13, 0x3e19999a

    add-float/2addr v13, v7

    const/high16 v14, 0x3f40

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 589
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v9, 0xc

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3e19999a

    add-float/2addr v11, v7

    const/high16 v12, 0x3f00

    const v13, 0x3e19999a

    const/high16 v14, 0x4000

    mul-float/2addr v14, v7

    add-float/2addr v13, v14

    const/high16 v14, 0x3f40

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 591
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v9, 0xd

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3e19999a

    const/high16 v12, 0x4000

    mul-float/2addr v12, v7

    add-float/2addr v11, v12

    const/high16 v12, 0x3f00

    const v13, 0x3e19999a

    const/high16 v14, 0x4040

    mul-float/2addr v14, v7

    add-float/2addr v13, v14

    const/high16 v14, 0x3f40

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 593
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v9, 0xe

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3e19999a

    const/high16 v12, 0x3f40

    const v13, 0x3e19999a

    add-float/2addr v13, v7

    const/high16 v14, 0x3f80

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 595
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v9, 0xf

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3e19999a

    add-float/2addr v11, v7

    const/high16 v12, 0x3f40

    const v13, 0x3e19999a

    const/high16 v14, 0x4000

    mul-float/2addr v14, v7

    add-float/2addr v13, v14

    const/high16 v14, 0x3f80

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 597
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v9, 0x10

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3e19999a

    const/high16 v12, 0x4000

    mul-float/2addr v12, v7

    add-float/2addr v11, v12

    const/high16 v12, 0x3f40

    const v13, 0x3e19999a

    const/high16 v14, 0x4040

    mul-float/2addr v14, v7

    add-float/2addr v13, v14

    const/high16 v14, 0x3f80

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 600
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v9, 0x11

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3f59999a

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3e80

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 601
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v9, 0x12

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3f59999a

    const/high16 v12, 0x3e80

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f00

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 602
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v9, 0x13

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3f59999a

    const/high16 v12, 0x3f00

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f40

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 603
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v9, 0x14

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const v11, 0x3f59999a

    const/high16 v12, 0x3f40

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 605
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->mRects:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v9, 0x15

    new-instance v10, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x3eb33333

    const v14, 0x3ee66666

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    aput-object v10, v8, v9

    .line 606
    return-void
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 610
    const-string v0, "default.protrait"

    return-object v0
.end method
