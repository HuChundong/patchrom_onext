.class Lcom/scalado/app/rewind/RectTracker$AbstractFace;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbstractFace"
.end annotation


# instance fields
.field private mAllSame:Z

.field private mCanReplace:Z

.field private mCurImgIndex:I

.field private mId:I

.field private mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

.field private mLockedWith:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mPossibilities:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TrackedImage;",
            ">;"
        }
    .end annotation
.end field

.field private mRanked:[Lcom/scalado/app/rewind/RectTracker$RankedId;

.field private mSelectedImageIndex:I

.field private mWorkPoint:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;I)V
    .locals 2
    .parameter
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 2218
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2206
    iput-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mAllSame:Z

    .line 2209
    const/4 v0, -0x1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mSelectedImageIndex:I

    .line 2210
    iput-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCanReplace:Z

    .line 2211
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mWorkPoint:Landroid/graphics/PointF;

    .line 2213
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;

    .line 2219
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I

    .line 2220
    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2221
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$AbstractFace;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2218
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;-><init>(Lcom/scalado/app/rewind/RectTracker;I)V

    return-void
.end method

.method private absoluteRelativeDist(IILandroid/graphics/PointF;)Z
    .locals 6
    .parameter "bg"
    .parameter "fg"
    .parameter "dst"

    .prologue
    const/4 v4, 0x0

    .line 2249
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    aget-object v2, v5, p1

    .line 2250
    .local v2, tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    aget-object v3, v5, p2

    .line 2251
    .local v3, tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 2261
    :cond_0
    :goto_0
    return v4

    .line 2254
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2257
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2258
    .local v0, dx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 2259
    .local v1, dy:F
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->access$1(Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/base/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v0, v4

    iput v4, p3, Landroid/graphics/PointF;->x:F

    .line 2260
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->access$1(Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/base/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v1, v4

    iput v4, p3, Landroid/graphics/PointF;->y:F

    .line 2261
    const/4 v4, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2214
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCurImgIndex:I

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Z
    .locals 1
    .parameter

    .prologue
    .line 2206
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mAllSame:Z

    return v0
.end method

.method static synthetic access$10(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .locals 1
    .parameter

    .prologue
    .line 2235
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->getAllLocked()[Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I
    .locals 1
    .parameter

    .prologue
    .line 2209
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mSelectedImageIndex:I

    return v0
.end method

.method static synthetic access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I
    .locals 1
    .parameter

    .prologue
    .line 2207
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I

    return v0
.end method

.method static synthetic access$13(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Ljava/util/Vector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2216
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$14(Lcom/scalado/app/rewind/RectTracker$AbstractFace;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2264
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->canReplace(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2209
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mSelectedImageIndex:I

    return-void
.end method

.method static synthetic access$17(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2206
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mAllSame:Z

    return-void
.end method

.method static synthetic access$18(Lcom/scalado/app/rewind/RectTracker$AbstractFace;[Lcom/scalado/app/rewind/RectTracker$RankedId;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2208
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mRanked:[Lcom/scalado/app/rewind/RectTracker$RankedId;

    return-void
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$RankedId;
    .locals 1
    .parameter

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mRanked:[Lcom/scalado/app/rewind/RectTracker$RankedId;

    return-object v0
.end method

.method static synthetic access$3(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Lcom/scalado/app/rewind/RectTracker$TrackedImage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2223
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->addPossibility(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)V

    return-void
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$5(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2210
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCanReplace:Z

    return-void
.end method

.method static synthetic access$6(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I
    .locals 1
    .parameter

    .prologue
    .line 2214
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCurImgIndex:I

    return v0
.end method

.method static synthetic access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .locals 1
    .parameter

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    return-object v0
.end method

.method static synthetic access$9(Lcom/scalado/app/rewind/RectTracker$AbstractFace;IILandroid/graphics/PointF;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2248
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->absoluteRelativeDist(IILandroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method private addPossibility(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)V
    .locals 1
    .parameter "img"

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2225
    return-void
.end method

.method private canReplace(II)Z
    .locals 4
    .parameter "bg"
    .parameter "fg"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2265
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mWorkPoint:Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->absoluteRelativeDist(IILandroid/graphics/PointF;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2274
    :cond_0
    :goto_0
    return v0

    .line 2268
    :cond_1
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->access$2(Lcom/scalado/app/rewind/RectTracker;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    move v0, v1

    .line 2269
    goto :goto_0

    .line 2271
    :cond_2
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mWorkPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->access$2(Lcom/scalado/app/rewind/RectTracker;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mWorkPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->access$2(Lcom/scalado/app/rewind/RectTracker;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    .line 2274
    goto :goto_0
.end method

.method private getAllLocked()[Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .locals 4

    .prologue
    .line 2236
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 2237
    .local v0, faces:[Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 2238
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 2241
    return-object v0

    .line 2239
    :cond_0
    add-int/lit8 v3, v1, 0x1

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    aput-object v2, v0, v3

    .line 2238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method